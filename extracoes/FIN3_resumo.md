# FIN3 – D1 Financiamento, 2ª rodada: universidades, IFs, FNDCT e bolsas

Coletor: agente FIN3 · Data: 2026-10-02 · Fontes: FIN3-001 a FIN3-016 (FIN3-017 e FIN3-018 aparecem só como URLs não lidas no TSV) · Extrações: `extracoes/FIN3.csv` (96 linhas)

## 1. Rotas tentadas (as mesmas para os dois grupos)
| Rota | Resultado |
|---|---|
| Câmara/CONOF (`www2.camara.leg.br/orcamento-da-uniao/estudos`, anos 2023–2025) | HTTP 429 repetido. A lista de 2025 só traz um ET sobre o FNDIT (que não é o FNDCT) e um sobre o Fundeb |
| Senado/Conorf (estudos e notas) | Listas sem estudo sobre universidades, IFs ou FNDCT |
| TCU (API `pesquisa.apps.tcu.gov.br`, portal) | HTTP 503 em todas as tentativas |
| IPEA (repositório) | robots.txt com timeout |
| MCTI, MEC (`gov.br/mec`, `gov.br/mcti`, inclusive `search_rss`) | CAPTCHA. A busca da CAPES está "em manutenção" |
| Portal da Transparência | Página sem conteúdo (JS) |
| CGU – PCPR 2025 | PDF truncado; o trecho lido não chega aos capítulos setoriais |
| Tesouro – RTN dez/2019 e dez/2020 (reler as discricionárias da Educação de 2019) | O sumarizador repete o valor mensal de dezembro (3.930,9 mi) como se fosse anual. Descartado |
| Planejamento – Mensagens dos PLOA 2023–2026 e Orçamento Cidadão | Só a Mensagem do PLOA 2024 foi lida até os destaques setoriais. As de 2023, 2025 e 2026 vieram truncadas |
| **SIOP – endpoint SPARQL** (`www1.siop.planejamento.gov.br/sparql/`, grafos 2000–2026) | **Funcionou.** É a base das séries abaixo (nível A) |

Técnica usada no SIOP: `SELECT ?a SUM(?valor) WHERE{?i loa:temAcao ?a; loa:<valor> ?v. ?a loa:codigo "<ação>"}`, agrupando pelo IRI da ação, que traz o ano no próprio endereço. O servidor recusa com HTTP 400 as consultas de custo alto (cruzar UO com ação, agrupar por resultado primário) e as URLs com mais de cerca de 256 caracteres. A série do 20RK foi baixada de novo em CSV e saiu idêntica.

## 2. Achados (R$ correntes, empenhado; pago no exercício entre parênteses)
**Universidades (20RK funcionamento + 4002 assistência estudantil + 8282 reestruturação; soma feita pelo coletor)**
| | 2019 | 2020 | 2021 | 2022 | 2023 | 2024 | 2025 | 2026* |
|---|---|---|---|---|---|---|---|---|
| Soma (bi) | 6,18 (4,59) | 5,89 (3,81) | 4,95 (3,25) | 5,63 (4,17) | 6,96 (5,40) | 7,02 (5,51) | 7,38 (6,02) | 5,36 (4,24) |
| 20RK, dotação inicial (bi) | 4,59 | 4,38 | 3,70 | 4,21 | 5,22 | 4,30 | 5,19 | 5,36 |
| 20RK, empenhado (bi) | 4,34 | 4,13 | 3,49 | 3,80 | 5,11 | 4,93 | 5,54 | 4,12 |

**Rede Federal EPCT (20RL + 2994 + 20RG)**
| | 2019 | 2020 | 2021 | 2022 | 2023 | 2024 | 2025 | 2026* |
|---|---|---|---|---|---|---|---|---|
| Soma (bi) | 2,64 (1,73) | 2,56 (1,41) | 2,10 (1,23) | 2,48 (1,73) | 3,06 (2,18) | 3,11 (2,20) | 3,37 (2,48) | 2,05 (1,44) |
| 20RL, dotação inicial (bi) | 2,08 | 1,93 | 1,47 | 1,93 | 2,25 | 1,95 | 2,10 | 2,17 |

**FNDCT (UO 24901), pago no exercício (bi):** 0,66 / 0,75 / 0,50 / 2,20 / 4,07 / 4,64 / 5,47 / 3,66*. A ação 0Z00 (reserva de contingência) aparece vinculada ao FNDCT em 2019, 2020, 2021 e 2023. O valor dessa reserva **não foi obtido**. O PLOA 2024 propôs 11.959,6 mi para o FNDCT, metade em despesa não reembolsável e metade em financiamento reembolsável (FIN3-012).

**Bolsas, empenhado (bi).** CAPES (ação 0487): 2,66 / 2,44 / 2,10 / 2,41 / 3,33 / 3,36 / 3,58 / 2,79*. CNPq (ação 00LV): 1,13 / 1,01 / 0,89 / 0,90 / 1,27 / 1,25 / 1,20 / 1,12*. Os valores não separam o reajuste do número de bolsas.

*2026: valores parciais, com base atualizada em 02/10/2026.

## 3. Lacunas
1. **Discricionária pura (RP2)** das universidades e dos IFs: o SIOP não permitiu separar o RP2 das emendas e do Novo PAC. O conjunto de ações também não cobre tudo, ficando de fora, por exemplo, a 20GK e ações próprias do Novo PAC.
2. **FNDCT**: faltam arrecadação, empenhado, dotação e o valor em reserva de contingência por ano.
3. **Ato de reajuste das bolsas CAPES/CNPq de 2023** (portaria, data e percentuais) e eventual reajuste em 2019–2022: não localizados. Falta também a série do número de bolsas CAPES em fonte A/B; o único dado é a previsão de cerca de 110,3 mil bolsas no PLOA 2024.
4. **Discricionárias da Educação em 2019 (RTN)**: continua em aberto. É preciso ler a série XLSX do Tesouro (thot 7114).
5. Mensagens dos PLOA 2020–2023 e 2025–2026 não foram lidas por completo. Sem elas, os dados do PLOA 2024 não têm comparação simétrica.

## 4. Ressalvas metodológicas
- O conceito de cada valor está indicado: dotação inicial, dotação atualizada (Lei + créditos), empenhado ou **pago no exercício sem restos a pagar**. Este último não é comparável ao pago em caixa do RTN.
- Os totais da função 12 no SIOP (FIN3-011) ficam cerca de 10–13 bi acima da DCA (FIN-002) em todos os anos. A hipótese de intraorçamentárias não foi verificada. Por isso não se devem misturar as bases.
- As ações incluem emendas parlamentares. Variações podem refletir decisões do Congresso, e não só do Executivo.
- A soma por ação é uma **derivação do coletor**. Ela é proxy de custeio e investimento das IFES, não é o "orçamento discricionário" oficial do MEC.
- As URLs SPARQL no TSV contêm `{}` e `"`; ao baixar com curl, usar `-g`.
