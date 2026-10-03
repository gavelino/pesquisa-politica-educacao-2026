# FIN – D1 Financiamento (QP1): resumo da coleta

Coletor: agente FIN · Data: 2026-10-02 · Fontes: FIN-001 a FIN-048 · Extrações: `extracoes/FIN.csv` (128 linhas)

## 1. Restrições de ferramenta (importam para a reprodutibilidade)
- **WebSearch estava desativado** para a organização (HTTP 403 em todas as consultas). Os mecanismos de busca (Bing, DuckDuckGo, Mojeek) e a busca do DOU (in.gov.br) foram bloqueados por robots.txt. Por isso todas as fontes vieram de URLs oficiais conhecidas ou descobertas navegando a partir delas.
- Portal da Transparência, SIOP, Painel do Orçamento, SIGA Brasil e os portais de dados abertos da CAPES e do CNPq exigem JavaScript ou chave de API, ou foram bloqueados. FINEP: robots.txt. MCTI: CAPTCHA. **WebFetch não lê XLSX.**
- A principal série orçamentária veio da **API SICONFI/Tesouro** (DCA Anexo I-E e RREO Anexo 02 da União). A API pagina sem ordenação estável, e um modelo sumarizador lê o conteúdo. Por isso todos os valores de empenho, liquidação e pagamento foram **conferidos pelas identidades contábeis** (Empenhado = Liquidado + RAP não processados; Liquidado = Pago + RAP processados). Valores que não fecharam foram descartados ou rederivados, e as derivações estão anotadas.

## 2. O que foi buscado (iguais para os dois grupos, todos os anos 2019–2026)
| Item | Fonte/estratégia | Resultado |
|---|---|---|
| 1. Orçamento da educação por ano | SICONFI DCA I-E (2019–2025) e RREO Anexo 02 (6º bim. 2019–2025; 4º bim. 2026), função 12 e subfunções 363/364/368, e subfunção 28.847 | Série completa da **função Educação**: dotação inicial e atualizada, empenhado, liquidado, pago, RAP (FIN-002, FIN-003). Série do **órgão 26000 (MEC)** não obtida. |
| 2. Discricionárias, bloqueios e desbloqueios | RTN/STN de dezembro de cada ano e de agosto/2026 (FIN-004–011). Decretos de programação do Planalto (FIN-012–028) | Discricionárias da Educação pagas em 2020–2025 e jan–ago/2026. Limites de empenho do MEC por decreto: 2019, 2021, 2022, 2023, 2024 e 2025. Bloqueio de abril/2021. Valores dos anexos de bloqueio de 2023, 2024 e 2025 não lidos. |
| 3. Complementação ao FUNDEB | RTN (caixa), EC 108/2020, Lei 14.113/2020 | Série 2019–2025 completa, mais jan–ago/2026 (FIN-004–011, 032, 033) |
| 4. CAPES, CNPq e FNDCT | Página "Orçamento – evolução em reais" da CAPES; Relatórios de Gestão do CNPq 2019–2025; LC 177/2021; MP 1.136/2022 | CAPES 2018–2026 completa (dotação e execução). CNPq só com números narrativos e não homogêneos. FNDCT só com os atos normativos, **sem execução** |
| 5. Reajustes de bolsas | Página do CNPq e RG CNPq 2023 | Valores vigentes do CNPq (Portarias 1369/2023 e 1502/2023) e afirmação oficial de que estavam "estagnados desde 2013". **Ato e data do reajuste da CAPES não localizados.** |
| 6. PNAE, PNLD e PDDE | Páginas do FNDE e Resoluções CD/FNDE 6/2020, 2/2023 e 1/2026 | PNAE: repasses 2018–2023 e per capita (2020, 2023, 2026). PNLD: 2019–2026. **PDDE não obtido.** |
| 7. IPCA | API SIDRA, tabela 1737 | 2019–2025 e acumulado jan–ago/2026, com número-índice (FIN-001) |

## 3. Achados por grupo (somente fatos registrados; sem juízo de valor)
### Grupo B: Bolsonaro, 2019–2022
- Função Educação empenhada: 101,30 bi (2019), 95,01 bi (2020), 101,89 bi (2021) e 117,75 bi (2022). Pagos no exercício: 84,26 / 78,27 / 85,89 / 99,71 bi (FIN-002). Valores nominais.
- Complementação ao Fundeb (caixa): 15,60 bi (2019), 15,00 bi (2020), 22,03 bi (2021, primeiro ano do Novo Fundeb) e 32,88 bi (2022). Os aumentos de 2021–2022 decorrem do cronograma da EC 108/2020, que foi promulgada pelo Congresso. A Lei 14.113/2020 foi sancionada pelo Executivo.
- Discricionárias da Educação pagas: 19,32 bi (2020), 19,61 bi (2021) e 20,19 bi (2022). O valor de 2019 não foi obtido.
- Contingenciamento de março/2019 (Decreto 9.741): limite do MEC de 17,79 bi, ampliado depois para 20,65 bi (setembro) e 25,83 bi (dezembro).
- Bloqueio de 2,73 bi do MEC em abril/2021 (Decreto 10.686).
- Em 2022, reduções de limite em julho (−1,62 bi em "Demais") e setembro (−0,14 bi). Em dezembro/2022, nenhum limite adicional de pagamento para o MEC (Decreto 11.269). Uma eventual reversão posterior não foi verificada.
- CAPES, dotação final: 4,19 bi (2019), 3,55 bi (2020), 3,38 bi (2021) e 3,57 bi (2022).
- CNPq 2019: déficit de cerca de 300–340 mi para bolsas e contingenciamento de 70 mi no fomento (atas no RG).
- LC 177/2021 sancionada com veto à proibição de usar recursos do FNDCT em reserva de contingência. O veto foi derrubado (promulgação em 26/03/2021).
- MP 1.136/2022 limitou a aplicação do FNDCT. Perdeu eficácia em 15/02/2023.
- PNAE: per capita mantido na Res. 6/2020 (EF/EM R$ 0,36).

### Grupo A: Lula 3, 2023–30/09/2026
- Função Educação empenhada: 140,07 bi (2023), 151,67 bi (2024) e 176,01 bi (2025); 182,39 bi até ago/2026. Pagos: 118,79 / 125,58 / 148,51 bi.
- Complementação ao Fundeb (caixa): 37,49 bi (2023), 47,54 bi (2024) e 59,73 bi (2025); 45,43 bi em jan–ago/2026. O cronograma da EC 108 continua valendo.
- Discricionárias da Educação pagas: 34,96 bi (2023, dos quais 6,1 bi foram para a política de permanência no ensino médio, segundo o Tesouro), 28,58 bi (2024) e 32,69 bi (2025); 29,89 bi em jan–ago/2026, incluindo 9,5 bi de integralização do FIPEM.
- Limites de empenho do MEC: 30,04 bi (2023; 30,20 bi em novembro). Em 2024, 33,51 bi em julho, reduzidos para 31,75 bi em novembro (−1,76 bi). Em 2025, 34,46 bi em novembro, com contenção residual de 0,30 bi do MEC em emendas RP7. Os valores dos anexos de bloqueio de 2023, 2024 e 2025 não foram lidos.
- CAPES, dotação final: 5,41 bi (2023), 5,01 bi (2024) e 5,73 bi (2025); dotação de 4,96 bi em 2026.
- CNPq: reajuste de bolsas em 2023 (mestrado 2.100, doutorado 3.100, IC 700), com recursos da PEC da Transição (430 mi para bolsas e 150 mi para fomento). Em 2024, o fomento próprio teve 129,8 mi na LOA "o que impediu o lançamento de novas chamadas". Para 2025, o Planejamento aprovou 203,4 mi contra 740 mi pedidos.
- PNAE: per capita reajustado em março/2023 (Res. 2/2023: EF/EM 0,36 → 0,50) e de novo em fevereiro/2026 (0,57).

## 4. Lacunas
1. **Série do órgão MEC (26000)**, das universidades (UOs 26xxx) e dos IFs: dotação, empenhado e pago, sobretudo as discricionárias. Exige Tesouro Gerencial, SIOP ou Portal da Transparência (inacessíveis). A série da função 12 é um substituto, mas não é equivalente.
2. Discricionárias da Educação de 2019 (RTN): o valor anual não foi lido. Está na série histórica XLSX (URL em `urls_FIN.tsv`).
3. Decretos de 2020 e 2026: limites do MEC não obtidos. O número do decreto de programação de 2026 é desconhecido.
4. Valores do MEC nos anexos de bloqueio de 2023 (D11.538), 2024 (Anexo XXI) e 2025 (Anexo XIX do D12.477). Também falta a eventual reversão da trava de pagamentos de dezembro/2022.
5. **FNDCT**: execução e reserva de contingência por ano, 2019–2026.
6. CNPq: falta série homogênea de dotação, empenhado e pago (os RGs são narrativos). Falta também série oficial de execução de bolsas da CAPES e do CNPq separada de fomento.
7. **Portaria de reajuste das bolsas CAPES de 2023**: número, data e percentuais. Falta também a data das portarias do CNPq e um ato primário com os valores de 2013.
8. PDDE (não obtido), PNAE 2024–2026 (página desatualizada) e decomposição da subfunção 28.847.
9. Vetos da Lei 14.113/2020 e posição do Executivo na tramitação da EC 108/2020 (cabe às dimensões legislativas).

## 5. Ressalvas metodológicas
- **Conceitos diferentes não se somam:** dotação (autorização), empenho (compromisso), pagamento no exercício (DCA) e pagamento em caixa com restos a pagar (RTN). Cada linha do CSV indica o conceito.
- Todos os valores estão em **R$ correntes**. Para deflacionar, FIN-001 traz o número-índice do IPCA de dezembro de cada ano. A escolha entre índice de dezembro e média anual deve ser documentada.
- A **função 12 não inclui a complementação ao Fundeb** (função 28, subfunção 847). A subfunção 847 é mais ampla que a complementação.
- Os saltos de 2023 e 2026 nas discricionárias da Educação têm componentes pontuais ligados ao Pé-de-Meia (6,1 bi e 9,5 bi, segundo o Tesouro). Isso afeta comparações ano a ano.
- Os aumentos da complementação ao Fundeb de 2021 a 2026 seguem regra constitucional aprovada pelo Congresso em 2020. Atribuir esse crescimento a decisão discricionária de qualquer dos governos exige cautela.
- O PNLD aparece por ano letivo; a compra ocorre em geral no ano anterior. Isso afeta a atribuição a governo na virada 2022/2023.
- Limites de empenho por decreto mudam de estrutura entre anos (PAC, emendas RP6/7/8, RP2/RP3) e às vezes valem por período. Compare com cautela.
- Os números lidos por sumarizador em PDFs longos (RG CNPq, RTN) devem ser conferidos nos originais listados em `fontes/urls_FIN.tsv` antes da análise final.
