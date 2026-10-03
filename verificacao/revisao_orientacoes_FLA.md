# Revisão das orientações do Governo "indisponível" / "não verificada" (FLA, votos nominais)

Data: 02/10/2026. Método: releitura de `fontes/<ID>.md` e do DSF/DCN via WebFetch (sem curl/WebSearch), com faixa de páginas ampliada antes e depois de cada votação. `extracoes/FLA.csv` **não** foi editado.

**Critério (o mesmo para os dois governos):** a orientação conta como documentada quando (a) um Líder ou Vice-Líder do Governo diz explicitamente que encaminha ou orienta sim/não, ou (b) a orientação de bancadas registrada no DSF inclui expressamente o Governo, seja em fala da Presidência, seja no quadro de orientação do painel. Sem isso, a orientação fica como indisponível. Os dados abertos (`dadosabertos/plenario/votacao/orientacaoBancada/<data>`) serviram só como pista e não contam como prova.

**Limitação:** o proxy recusou algumas páginas por limite de taxa (HTTP 429) e elas não foram reabertas. São elas: DCN `codDiario=106810`, pp. 81–102 (etapa do Senado do VET 10/2021), e DSF `codDiario=107890`, pp. 40–66 (faixa original da PEC 13/2021). Para essa PEC foram lidas as faixas 30–39 e 67–80, e o registro original de FLA-009 continua valendo: "Como orienta o Governo?" ficou sem resposta.

## Tabela

| id_acao | matéria | data | orientação encontrada | trecho literal | página do DSF | URL |
|---|---|---|---|---|---|---|
| FLA-V02 | PL 1.277/2020 (prazos Enem/ensino superior) | 2020-05-19 | indisponível | Presidência: "Como vota o Governo, Senador Fernando Bezerra Coelho?" — FBC: "...nós defendemos, sim, o adiamento, mas um adiamento que, ficando aberto, não termine prejudicando todo o primeiro semestre do próximo ano letivo. De qualquer forma, o Senado está de parabéns." (sem sim/não) — Presidência: "Muito obrigado, Senador Fernando." | DSF 44/2020, p. 91 (faixas lidas: 60–104) | https://legis.senado.leg.br/diarios/BuscaPaginasDiario?codDiario=103785&paginaInicial=89&paginaFinal=92 |
| FLA-V03 | PL 1.277/2020 – Emenda 12 destacada | 2020-05-19 | indisponível (a orientação geral não inclui expressamente o Governo) | Presidência: "Peço à Secretaria-Geral da Mesa que faça a orientação de todos os partidos 'sim'." (o Governo não é mencionado) | DSF 44/2020, pp. 95–96 | https://legis.senado.leg.br/diarios/BuscaPaginasDiario?codDiario=103785&paginaInicial=95&paginaFinal=98 |
| FLA-V07 | PEC 26/2020 (Fundeb) – 2º turno | 2020-08-25 | indisponível pelo critério literal (ver nota sobre V06) | p. 18, Presidência: "...delegar à Presidência e à Secretaria a orientação 'sim' de todas as bancadas [...] tanto em primeiro como em segundo turno [...] que coloque todas as orientações 'sim' pelos partidos políticos." p. 38, FBC: "Quero aqui, em nome do Governo do Presidente Bolsonaro, reassumir o compromisso de que nós vamos cuidar da rápida regulamentação desta proposta" (não diz sim nem não) | DSF 111/2020, pp. 18, 36–38, 59 (faixas lidas: 17–19, 30–59) | https://legis.senado.leg.br/diarios/BuscaPaginasDiario?codDiario=104751&paginaInicial=17&paginaFinal=19 |
| FLA-V08 | PL 3.892/2020 – Emenda 29 (Substitutivo) | 2020-09-01 | **sim** | Presidência: "E, por fim, convido o Líder do Governo, Senador Fernando Bezerra, para a sua orientação." FBC: "Portanto, Sr. Presidente, é com alegria que a gente manifesta o apoio do Governo à iniciativa da nobre Senadora Kátia Abreu." Presidência (Anastasia): "Cumprimento V. Exa. pela orientação "sim" do Governo nessa pauta tão importante..." | DSF 116/2020, pp. 43–44 (faixas lidas: 18–45) | https://legis.senado.leg.br/diarios/BuscaPaginasDiario?codDiario=104791&paginaInicial=42&paginaFinal=44 |
| FLA-V11 | VET 10/2021 (internet para alunos/professores) – sessão do Congresso | 2021-06-01 | indisponível (verificação incompleta) | pp. 62–80 e 103–116: nenhuma fala do tipo "o Governo orienta"; p. 69: votação "nos termos do acordo de liderança para rejeição". A etapa do Senado (pp. 81–102) não foi lida por causa do HTTP 429 | DCN 21/2021, pp. 62–80, 103–116 | https://legis.senado.leg.br/diarios/BuscaPaginasDiario?codDiario=106810&paginaInicial=62&paginaFinal=73 |
| FLA-V13 | PEC 13/2021 – Emenda 4 (Substitutivo), 1º turno | 2021-09-15 | indisponível | FLA-009: "Como orienta o Governo?" sem resposta registrada. pp. 30–39 e 67–80: nenhuma orientação do Governo. Painel (dados abertos, só como pista): não há linha "Governo" | DSF 149/2021, pp. 40–66 (orig.); 30–39 e 67–80 (ampliação) | https://legis.senado.leg.br/diarios/BuscaPaginasDiario?codDiario=107890&paginaInicial=67&paginaFinal=80 |
| FLA-V14 | PEC 13/2021 – Emenda 3 destacada | 2021-09-15 | indisponível | FLA-009: "Governo – sem orientação registrada". Painel (pista): não há linha "Governo" | idem | idem |
| FLA-V26 | PLP 153/2024 (saldos FNDE) | 2024-11-27 | **sim** | Quadro de orientação da votação nominal: "Governo — SIM" (com PSD, PL, MDB, PT, PP, PSB, Republica, NOVO, Minoria e Oposição SIM); "SIM:67 NÃO:0 ABST.: 0 PRESIDENTE:1 TOTAL:68" | DSF 203/2024, pp. 70–71 (faixas lidas: 66–80) | https://legis.senado.leg.br/diarios/BuscaPaginasDiario?codDiario=118536&paginaInicial=68&paginaFinal=72 |
| FLA-V27 | PL 4.932/2024 (celulares) – Emenda 1 destacada | 2024-12-18 | **não** | Presidência: "Como orienta o Governo, Senador Randolfe Rodrigues?" — Randolfe: "Por isso, o Governo orienta o voto 'não'." Resultado: "Votaram SIM 16 Senadores; NÃO, 42 Senadores." | DSF 218/2024, pp. 100–102 (faixas lidas: 77–106) | https://legis.senado.leg.br/diarios/BuscaPaginasDiario?codDiario=118896&paginaInicial=100&paginaFinal=102 |
| FLA-V30 | PLP 48/2023 (transferências na educação) | 2025-04-29 | **sim** | Presidência: "...se nós podemos orientar por todos os partidos o voto favorável." — Jaques Wagner: "E o Governo também." — Presidência: "E o Governo também orienta o voto 'sim'. Já o tinha colocado, Líder." | DSF 64/2025, p. 46 (faixas lidas: 44–56) | https://legis.senado.leg.br/diarios/BuscaPaginasDiario?codDiario=120197&paginaInicial=44&paginaFinal=46 |
| FLA-V31 | PEC 137/2019 (art. 205) – 1º e 2º turnos | 2025-07-09 | indisponível | Só aparece a orientação do PT: "A orientação da Bancada do PT é pelo voto sim" (pp. 44–45). Não há fala do Governo nem linha "Governo". Painel (pista): só PT SIM | DSF 110/2025, pp. 36–66 | https://legis.senado.leg.br/diarios/BuscaPaginasDiario?codDiario=121056&paginaInicial=44&paginaFinal=58 |
| FLA-V24* | PL 5.384/2020 – mérito (votação simbólica) | 2023-10-24 | indisponível | p. 78: "Aprovado o projeto. Contra os votos do Senador Flávio Bolsonaro, ..." (sem orientação do Governo para o mérito) | DSF, pp. 76–80 | https://legis.senado.leg.br/diarios/BuscaPaginasDiario?codDiario=113913&paginaInicial=76&paginaFinal=80 |

\* V24 foi examinado só para manter a simetria, porque estava como "não registrada". Por ser votação simbólica, fica fora de qualquer índice.

**Nota sobre V06 (fora do escopo, mas afetada pelo mesmo critério):** o CSV conta V06 (1º turno do Fundeb) como "Sim (orientação geral de todas as bancadas)". O trecho da p. 18 fala apenas em "Líderes partidários" e "partidos políticos", não menciona o Governo e vale **para os dois turnos**. Por isso, ou V06 e V07 entram juntos como "sim" (leitura branda), ou saem juntos (leitura literal). Classificar V06 como sim e V07 como indisponível é incoerente.

**Efeito sobre Flávio:** V08 passa a contar como alinhado (Sim/Sim). V03, V27 e V24 não mudam o índice, porque ele não votou, votou "presente" ou a votação foi simbólica. No período 2023–2026, V26 e V30 passam a contar a favor da posição do governo Lula; V31 continua fora.

## Índice de alinhamento 2019–2022

O índice considera só votos Sim/Não com orientação documentada; ausências, "presente" e orientação indisponível ficam fora do denominador. V12 entra como alinhado.

Votos que entram pelo critério literal: V01 A, V05 **N**, V08 A, V09 A, V10 **N**, V12 A, V15 A, V16 A, V17 A, V18 A, V19 A, V20 A, V22 A. Aqui V06 e V07 ficam de fora.

| Cenário | Alinhados / Total | % |
|---|---|---|
| **Principal (critério literal; V12 e V08 alinhados; V06 e V07 fora)** | **11/13** | **84,6%** |
| Sem PEC 23/2021 (V17–V19) | 8/10 | 80,0% |
| Sem PL 4.725/2020 (V10) | 11/12 | 91,7% |
| Sem os dois | 8/9 | 88,9% |
| Só orientação dita por Líder/Vice-Líder (V01, V05, V08, V09, V12, V16, V17, V22) | 7/8 | 87,5% |
| — idem, sem V08 (FBC disse "apoio", e o "sim" veio da Presidência) | 6/7 | 85,7% |
| Referência: base do CSV + V12 + V08 (V06 dentro) | 12/14 | 85,7% |
| Referência: idem, com V06 e V07 dentro (leitura branda nos dois turnos) | 13/15 | 86,7% |
| Referência: índice antes da revisão (V12 e V08 fora; V06 dentro) | 10/12 | 83,3% |

Os votos sempre não alinhados são V05 (PLP 135/2020) e V10 (PL 4.725/2020).

Na sensibilidade "só Líder/Vice-Líder", saem os votos em que a orientação foi registrada pela Presidência: V10, V15, V18, V19 e V20. Em V22, Carlos Portinho diz "O Governo orienta 'sim'", mas o cargo dele não aparece no trecho (ressalva de FLA-026).

Para comparação, no período 2023–2026, com as orientações agora encontradas: V23 contra, V25 a favor, V26 a favor, V28 contra, V29 contra, V30 a favor e V32 a favor, o que dá **4/7 (57,1%)** a favor da posição do governo Lula.
