# Resumo da coleta GES (D4 Gestão e Governança / D5 Valorização Docente)

Coletor: agente GES. Data de acesso: 2026-10-02. Fontes: 39 (GES-001 a GES-039). Extrações: 38 linhas em `extracoes/GES.csv`. URLs para download: `fontes/urls_GES.tsv` (69 linhas).

## 1. Restrições técnicas que afetaram a coleta (valem para os dois grupos)
- **WebSearch desabilitado** (HTTP 403 da organização). As buscas foram feitas por WebFetch em mecanismos internos dos próprios órgãos: `search_rss` dos portais gov.br (Inep, FNDE, CNPq, MGI, CGU), API REST de pesquisa de acórdãos do TCU (`pesquisa.apps.tcu.gov.br/rest/...`), API de Dados Abertos do Senado e da Câmara, e páginas do Planalto.
- **Inacessíveis**: gov.br/mec (CAPTCHA em todas as páginas), in.gov.br/DOU e pesquisa.in.gov.br (robots.txt), lexml (robots), CAPES (portal "em manutenção"), proposicoesWeb da Câmara (HTTP 429 persistente), documentos sdleg do Senado (verificação anti-robô), DuckDuckGo/Bing (robots). Por isso **nenhum decreto de nomeação ou exoneração do DOU e nenhuma portaria do MEC sobre o piso foi lida diretamente**.
- Várias páginas do Planalto foram truncadas pelo extrator (anexos com tabelas salariais não transcritos; Lei 15.367/2026 truncada).

## 2. O que foi buscado (strings e sites)
- Planalto: MPs 914/2019, 979/2020, 1.170/2023, 1.286/2024, 1.334/2026; Leis 13.325/2016, 14.673/2023, 15.141/2025, 15.367/2026, 15.437/2026; Decreto 10.185/2019; EMIs 53/2023, 140/2024 e EM 143/2026.
- TCU (API): "Exame Nacional do Ensino Médio Inep Enem auditoria"; "Enem 2019 erro correção notas gráfica"; "FNDE ônibus escolares sobrepreço 2022"; "FNDE distribuição recursos municípios 2022 critérios"; "MEC FNDE pastores prefeitos intermediação liberação recursos"; "Pé-de-Meia Fipem orçamento"; "piso salarial magistério"; "3.845,63". Os mesmos tipos de busca (Enem, FNDE/PAR, programas do MEC) retornaram acórdãos dos dois períodos.
- Inep (`search_rss`): presidentes, Enem, inscritos, confirmadas, abstenção, milhões, Barchini, Palacios, Carlos Eduardo Moreno Sampaio; páginas ex-presidentes, quem é quem, histórico do Enem, sinopses estatísticas.
- FNDE: presidentes; piso salarial. CNPq: presidentes, Evaldo Vilela, Olival Freire. MGI: acordo docentes, PROIFES, Termo de Acordo, Barchini.
- Senado Dados Abertos: senador 6336 (Camilo Santana), MPV 1334/2026. Câmara Dados Abertos: MPV 1334/2026 e itens relacionados.
- Andifes (nível C): lista tríplice; intervenções/nomeados (sem resultado).

## 3. Achados por grupo

### D4.1 Rotatividade de dirigentes (contagem de trocas no período, incluindo a substituição do titular herdado)
| Cargo | Grupo B (2019-2022) | Grupo A (2023-set/2026) | Nível |
|---|---|---|---|
| Ministro da Educação | 4 titulares empossados (3 trocas) + 1 nomeação revogada sem posse (Decotelli) | 2 titulares (1 troca: Camilo Santana -> Leonardo Barchini, abr/2026) | B: só D (nao_confirmado); A: A (Senado + assinatura em lei + Inep) |
| Presidente do Inep | 5 trocas (Fini->Rodrigues->Vicenzi->Lopes->Dupas->Moreno Sampaio) | 1 troca (Palacios; presente até 10/09/2026) | A (Moreno Sampaio só por agenda oficial) |
| Presidente do FNDE | 4 trocas (Decotelli, Dias, Santos, Ponte) | 1 troca (Pacobahyba; confirmado só até set/2023) | A |
| Presidente do CNPq | 2 trocas (Azevedo, Vilela) | 2 trocas (Galvão, Freire Júnior) | B: D; A: parcial (Freire em fonte A; Galvão em D) |
| Presidente da CAPES | não contado | 2 nomes (Bustamante, Carvalho) | só D (nao_confirmado) |

### D4.2 Enem
- B: TCU (Ac. 1859/2023) registra os pedidos de exoneração de 37 servidores do Inep às vésperas do Enem 2021 e as denúncias apuradas; o Ac. 1223/2023 traz achados sobre o processo de revisão de itens em 2021 (concentração em uma revisora; comissão ad hoc pela Portaria Inep 330/2019). As decisões foram de ciência e recomendação, sem sanção. Uma representação sobre contratos do Enem/Encceja autuada em 2022 foi julgada improcedente (Ac. 1603/2025).
- A: TCU acompanha o contrato de aplicação (PE 13/2022) e mandou o Inep concluir em 15 dias o recurso sobre uma multa ao Cebraspe (Ac. 2181/2026). No Enem 2026 os concluintes da rede pública foram inscritos automaticamente (notícia do Inep; ato normativo não localizado).
- Inscritos por ano: os arquivos oficiais foram identificados (Sinopses 2019-2025), mas não foram lidos. Linha de base 2018: 6.763.122.

### D4.3 Auditorias TCU/CGU (fatos de acórdão)
- B: PAR/FNDE 2020-2022. A representação foi julgada procedente (Ac. 2371/2023): ranking não usado e escolha discricionária sem critérios documentados, R$ 1,3 bi fiscalizados. No processo apartado (Ac. 2520/2026) a procedência foi parcial, sem dano ao erário e sem multa (LINDB/pandemia). Ônibus escolares (PE 02/2022): houve cautelar, depois improcedência e revogação da cautelar (Ac. 1157/2022); as estimativas de sobrepreço da CGU são citadas no acórdão.
- A: Pé-de-Meia. Houve cautelar que bloqueou R$ 6 bi (Ac. 61/2025); no monitoramento, o TCU registrou recursos executados fora do OGU e deu ciência ao MEC, sem multa (Ac. 2261/2026); outro acórdão apontou beneficiários irregulares e fez determinações (Ac. 663/2026). Uma auditoria dos programas 5112/5113 de 2025 resultou em recomendações (Ac. 1126/2026).
- Ambos/contexto: falta de interoperabilidade entre Siope, Siconfi, Siafi e Siafic (Ac. 2594/2026, autuado em 2022).
- Nenhum relatório da CGU foi lido diretamente. A CGU aparece apenas citada no Ac. 1157/2022.

### D4.4 Reitores e lista tríplice
- B: a MP 914/2019 (lista tríplice e escolha entre os três mais votados) teve a vigência encerrada sem conversão. A MP 979/2020 (reitores pro tempore designados pelo ministro) foi revogada pela MP 981/2020.
- A: a Lei 15.367/2026, art. 1º, XXIII, "estabelece critérios para a nomeação de dirigentes de instituições de ensino superior". Segundo a Andifes (nível C), ela pôs fim à lista tríplice; a primeira nomeação sob a nova regra foi na UFBA, em 12/08/2026.
- **Não foi encontrado número de nomeações fora do 1º colocado, em nenhum dos dois períodos, em fonte A ou B.**

### D5.1 Piso do magistério
- A: a MP 1.334/2026, convertida na Lei 15.437/2026, criou uma nova fórmula (INPC + 50% da média quinquenal da receita real do Fundeb, com piso mínimo igual ao INPC). A EM 143/2026 registra 2025 = R$ 4.867,77 e 2026 = R$ 5.130,63 (+5,40%), contra 0,37% pela regra anterior.
- **Valores, percentuais e portarias de 2019 a 2024: não confirmados** (MEC e DOU inacessíveis). Contexto B: o TCU (Ac. 2590/2024) e o FNDE (2021) registram a controvérsia sobre o critério de atualização depois da EC 108/2020.

### D5.2/D5.3 Servidores docentes federais
- A: reajuste linear de 9% a partir de 01/05/2023 (MP 1.170, convertida na Lei 14.673/2023; R$ 9,62 bi em 2023). Reestruturação da carreira e novas tabelas a partir de 2025 (MP 1.286/2024, convertida na Lei 15.141/2025). Criação de 3.800 cargos de Magistério Superior e 9.587 de EBTT (Lei 15.367/2026; criação, não provimento).
- B: os valores de 2019 vêm da Lei 13.325/2016 (governo anterior). Nenhum ato de reajuste geral editado em 2019-2022 foi localizado. O Decreto 10.185/2019 extinguiu cargos vagos e vedou concursos, com efeito marginal sobre cargos docentes.

## 4. Lacunas
1. Decretos de nomeação e exoneração de ministros e presidentes (DOU), nos dois grupos. As datas do Grupo B dependem de fonte D.
2. Data exata da saída de Camilo Santana e da nomeação de Leonardo Barchini, e se a nomeação é efetiva ou interina. Os retornos curtos ao Senado em 2023 e 2025 não foram verificados como exonerações.
3. Galerias oficiais da CAPES e do CNPq, e titular do FNDE em 2024-2026.
4. Erro de correção do Enem 2019: nenhuma fonte A/B acessível (MEC/Inep). Também falta o número de inscritos por edição (sinopses não lidas).
5. Número de reitores nomeados fora do 1º colocado (2019-2022 e 2023-2026). Faltam também a origem do projeto e os vetos da Lei 15.367/2026, e o texto exato dos dispositivos sobre reitor.
6. Portarias do piso de 2019 a 2026 (a hipótese de 0% em 2021 não foi verificada) e o parecer da comissão mista da MP 1.334 (Câmara, HTTP 429).
7. Percentuais de reajuste dos docentes em 2025 e 2026 por classe/nível e Termo de Acordo de 2024 (anexos e página do MGI inacessíveis). Painel Estatístico de Pessoal não consultado (dashboard).
8. Autorizações de concursos/provimento docente por período (portarias MEC/ME/MGI).
9. Relatórios da CGU (e-Aud) não consultados diretamente.

## 5. Ressalvas metodológicas
- O conteúdo foi capturado por WebFetch, que processa a página com um modelo. Parte dos trechos marcados como "literais" pode ter sido parafraseada (isso está indicado nas notas). Os números devem ser conferidos nos originais após o download.
- No CSV, linhas do tipo "indicador" com status "implementada" significam fato confirmado em fonte A/B, não juízo de mérito.
- A assimetria de confirmação (mais fontes A para o Grupo A em rotatividade ministerial) vem da acessibilidade das fontes: dados do Senado sobre um ministro-senador e documentos recentes. Não reflete diferença de procedimento. Os decretos do DOU, que confirmariam os dois grupos, ficaram inacessíveis para ambos.
- Os acórdãos do TCU foram registrados com desfecho completo, inclusive improcedências e ausência de multa, para os dois grupos. Denúncias relatadas em acórdãos foram distinguidas de achados e de decisões.
- Nomes de pessoas físicas citadas em acórdãos como responsáveis ou consultores foram omitidos quando não eram necessários (exceto dirigentes cujo cargo é o próprio objeto do indicador de rotatividade).
