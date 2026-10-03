# Resumo da coleta – prefixo FLA (QP6 – atuação parlamentar de Flávio Bolsonaro em educação)
> **ERRATA (02/10/2026, após verificação independente):** a verificação (verificacao/resultado_verificacao.csv) e a revisão das orientações (verificacao/revisao_orientacoes_FLA.md) encontraram orientação documentada do Governo em FLA-V12 e FLA-V08 (ambas "sim", Flávio alinhado) e corrigiram FLA-P05 (Emenda 2 foi de CCJ, 26/09/2023). Pelo critério literal, V06 e V07 passam a ficar fora do índice (tratamento coerente entre os dois turnos). **Índice vigente: 11/13 = 84,6%** (sensibilidades: sem PEC 23 = 8/10 = 80,0%; sem PL 4.725 = 11/12 = 91,7%; sem ambos = 8/9 = 88,9%; só Líder/Vice-Líder = 7/8 = 87,5%). Contexto 2023–2026: 4/7 (57,1%) de coincidência com a orientação do governo Lula. Os números da seção 2.4 abaixo são a versão anterior à revisão.


Data de acesso: 2026-10-02. Data de corte: 30/09/2026. Coletor: agente FLA. Ferramenta: apenas WebFetch (o WebSearch foi recusado pelo proxy da organização, HTTP 403, e não esteve disponível). Imprensa não foi usada.

## 1. O que foi buscado (fontes e consultas)

**Senado – dados abertos (legis.senado.leg.br/dadosabertos):**
- `senador/5894/mandatos`, `/comissoes`, `/relatorias`, `/autorias`, `/votacoes`;
- `materia/pesquisa/lista` para obter códigos de PEC 26/2020, PL 4372/2020, PL 3477/2020 (+VET 10/2021), PL 1338/2022, PL 5384/2020, PL 5230/2023, PEC 13/2021, PEC 23/2021, PL 2614/2024, PL 2617/2023, PL 54/2021, MPV 934/2020, PL 3418/2021, MPV 1075/2021, MPV 1090/2021, PL 4513/2020 e PLP 235/2019;
- `votacao?codigoMateria=...` para cada matéria;
- `votacao?codigoParlamentar=5894&dataInicio=...&dataFim=...` em janelas de 1 a 4 meses, de 02/2019 a 09/2026, para varrer todos os votos nominais do senador e filtrar os de educação;
- `processo?codigoParlamentarAutor=5894&termo=` com os termos educação, escola, ensino, universidade, estudante, professor, aluno, Fundeb e enem;
- `processo?sigla=PEC&ano=2024`, usado para localizar a PEC 54/2024.

**Senado – páginas de matéria e de votações (www25.senado.leg.br/web/atividade/materias/-/materia/<código>[/votacoes]).**

**Orientações de bancada:** os dados abertos do Senado não têm campo de orientação. As orientações foram lidas no Diário do Senado Federal (DSF), por faixas de páginas (`legis.senado.leg.br/diarios/BuscaPaginasDiario?codDiario=...&paginaInicial=...&paginaFinal=...`). O sumário foi lido primeiro e depois as páginas da Ordem do Dia. Foram lidos 17 DSFs e 1 Diário do Congresso Nacional (DCN), este para o VET 10/2021.

**Congresso Nacional:** `congressonacional.leg.br/materias/vetos/-/veto/detalhe/14045/1`, o painel do VET 10/2021.

**Planalto:** texto da EC 114/2021, com as regras dos precatórios do Fundef.

**ALERJ:**
- perfil do deputado (`/Deputados/PerfilDeputado/275?Legislatura=18`);
- portal Lotus Notes (`alerjln1.alerj.rj.gov.br/scpro0711|1115|1519.nsf/flaviobolsonaroint`) e `contlei.nsf`.

**Câmara dos Deputados (dados abertos):** proposição PL 3477/2020, para tentar achar a votação do veto. Não trouxe a orientação.

**Portal da Transparência:** consulta de emendas por autor com função 12 (Educação), tentada pela página e pelo endpoint `/emendas/consulta/resultado`.

## 2. O que foi encontrado

### 2.1 Cargos e comissões
- Senador pelo RJ desde 01/02/2019, com mandato até 31/01/2027. Filiações: PSL, depois sem partido, Patriota (foi líder) e PL.
- Nunca integrou a Comissão de Educação (CE) do Senado. Foi suplente da CCT e da CAS.
- Nenhuma relatoria de matéria de educação foi identificada. A lista de relatorias veio truncada, então isso não é conclusivo.
- Na ALERJ, o perfil não registra participação na Comissão de Educação. Os cargos registrados são em Segurança Pública, Legislação Constitucional, Defesa Civil, Direitos Humanos e Planejamento Familiar.

### 2.2 Proposições de educação (atividade parlamentar)
**Autor:**
- PL 2.170/2019: inclui empreendedorismo, matemática financeira, Educação Moral e Cívica e OSPB como temas transversais. Está em tramitação.
- Emendas nº 2 e nº 8 ao PL 5.384/2020 (Lei de Cotas). A nº 8 é um substitutivo com cota de 50% apenas por renda (até 1,5 salário mínimo per capita) e sem critério racial. Foi rejeitada.

**Coautor:**
- PEC 173/2019: tira do teto de gastos as despesas pagas com salário-educação.
- PEC 23/2025: alimentação escolar no mínimo constitucional, bolsas na educação infantil quando falta vaga pública e não responsabilização em calamidade.
- Emendas 9 e 10 ao PL 5.384/2020.
- R.S 13 e 14/2024: recursos contra decisão terminativa da CE.

**Requerimentos:**
- RQS 672/2023: pedido de informações sobre as escolas cívico-militares;
- REQ 12/2025: convocação do Ministro da Educação;
- RQS 541/2022: CPI sobre obras paradas e Fies;
- sessões especiais e debates sobre educação.

Nenhuma dessas proposições virou norma.

### 2.3 Votos nominais de educação, 2019–2022 (detalhe em FLA.csv, linhas V01 a V22)
Foram 22 registros:
- **Sim:** 14
- **Não:** 5 (PL 1277/2020, PLP 135/2020, PL 4725/2020, VET 10/2021 e destaque da PEC 13/2021)
- **Ausente por atividade parlamentar (AP):** 2
- **Presente sem registrar voto (P-NRV):** 1

Destaques:
- **Novo Fundeb (PEC 26/2020):** Sim nos dois turnos (79x0).
- **PEC 13/2021:** Sim. A PEC isenta de responsabilização quem descumpriu o mínimo constitucional em educação em 2020.
- **PEC 23/2021 (precatórios, incluindo o Fundef):** Sim nos três votos.
- **PLP 135/2020 (proíbe contingenciar o FNDCT):** Não. Foi o único voto contrário (71x1), embora o Governo tenha orientado "sim".
- **VET 10/2021 (internet nas escolas):** votou pela derrubada do veto total do próprio governo, num acordo de lideranças em votação em globo (Senado 0x69).

Sem voto individual registrado, porque a votação foi simbólica:
- **PL 3.477/2020:** o Líder do Governo votou contra.
- **PL 4.372/2020 (regulamentação do Fundeb, Lei 14.113/2020).**

### 2.4 Índice de alinhamento ao governo Bolsonaro, 2019–2022
Regra: entram só as votações com orientação do Governo registrada no DSF. Não houve inferência.

**Especificação principal: 10/12 = 83,3%.**
- **Alinhadas (10):** PL 1079/2020; PEC 26/2020, 1º turno; PLP 195/2020; PL 486/2021; PEC 13/2021, 2º turno; PEC 23/2021 (3 votos); PLP 235/2019, Emenda 28; PLC 102/2018.
- **Divergentes (2):** PLP 135/2020 (FNDCT) e PL 4.725/2020 (remição de pena por estudo). Nos dois casos o Governo orientou "sim" e Flávio votou "não".
- **Excluídas por orientação indisponível (7):** PL 1277/2020; PEC 26/2020, 2º turno; PL 3892/2020; VET 10/2021; PL 2201/2021; PEC 13/2021, 1º turno; PEC 13/2021, destaque da Emenda 3.
- **Excluídas por ausência ou falta de registro de voto (3).**

**Sensibilidade:**

| Recorte | Resultado |
|---|---|
| Sem a PEC 23/2021 (matéria fiscal) | 7/9 = 77,8% |
| Sem o PL 4.725/2020 (matéria limítrofe) | 10/11 = 90,9% |
| Sem as duas | 7/8 = 87,5% |
| Só orientações ditas por líder ou vice-líder (exclui orientações gerais ou registradas pela Presidência) | 6/7 = 85,7% |

Todas as 12 orientações documentadas eram "sim". Por isso o índice mede sobretudo se Flávio deixou de acompanhar matérias amplamente consensuais. Não mede alinhamento em matérias controversas.

### 2.5 Contexto 2023–2026: frente ao governo Lula (não comparável com o índice acima)
Há 5 votações com orientação do governo Lula verificada. Flávio votou como o governo em 2 e contra em 3, o que dá 40% de coincidência.
- **A favor da posição do governo:**
  - PLP 243/2023 (Pé-de-Meia);
  - PLP 235/2019, Sistema Nacional de Educação, em 2025.
- **Contra a posição do governo:**
  - RQS 950/2023, pedido de preferência para o seu substitutivo de cotas (Governo "não", Flávio "sim");
  - PEC 54/2024 (EC 135, que altera os arts. 212 e 212-A), 1º e 2º turnos (Governo "sim", Flávio "não").

Também registrou voto contrário ao PL de Cotas na votação simbólica.

Votos com orientação não verificada:
- PLP 153/2024: Sim;
- PLP 48/2023: Sim;
- PEC 137/2019: Sim;
- PL 4932/2024, Emenda 1: presente sem registrar voto.

Matérias votadas de forma simbólica, sem voto individual: reforma do ensino médio (PL 5230/2023) e PNE (PL 2614/2024). Flávio não aparece entre os contrários registrados.

O homeschooling (PL 1.338/2022) não foi votado em Plenário até a data de corte.

## 3. Lacunas
1. **Emendas parlamentares individuais para Educação:** não levantadas. O Portal da Transparência não devolveu conteúdo ao WebFetch, porque a página e o endpoint são carregados por JavaScript. É preciso baixar o CSV de emendas (URL em urls_FLA.tsv) e filtrar autor = FLAVIO BOLSONARO e função 12.
2. **ALERJ, 2003–2018:** a lista de proposições está incompleta. O sistema Lotus Notes só mostrou a primeira categoria (PEC/PLC) e a paginação deu erro. Nenhuma proposição de educação foi confirmada, o que não significa que não existam. A base 2003–2007 não foi lida. Não houve busca de votos nominais na ALERJ.
3. **Orientação do Governo indisponível em 7 votações de 2019–2022.** No VET 10/2021 há só um "acordo de liderança para rejeição", registrado na etapa da Câmara.
4. **Varredura de votos por período:** os documentos vêm truncados e a filtragem temática foi feita pelo modelo do WebFetch. Houve pelo menos um falso negativo, a votação do PLP 235/2019 em 09/03/2022, achada por outra via. Podem existir outros.
5. **PEC dos precatórios e Fundeb:** a parte educacional da PEC 23/2021 (EC 114, art. 4º) foi confirmada. Não foram procuradas outras PECs fiscais de 2019–2022 com efeito sobre a educação, como a PEC 186/2019. Os destaques dessa PEC não tratavam de educação, segundo os dados abertos.
6. **Piso do magistério:** não foi localizada votação nominal de Flávio sobre o piso no Senado. A PEC 11/2022 e a PEC 42/2022 tratam do piso da enfermagem, não do magistério.
7. **Votos de 2023–2026 sem orientação verificada:** PLP 153/2024, PLP 48/2023, PEC 137/2019 e PL 4932/2024.
8. **Transcrições:** foram feitas por WebFetch e às vezes vieram parafraseadas. Antes de citar, conferir as frases de orientação nos PDFs do DSF.

## 4. Ressalvas metodológicas
- **Simetria:** esta camada não é comparada com Lula. Serve apenas para validar o governo Jair Bolsonaro como proxy do grupo político de Flávio. Os dados de 2023–2026 entram como contexto e foram coletados com o mesmo procedimento: dados abertos, DSF e orientação do Governo da vez.
- **"Orientação do Governo":** foi considerada documentada quando o DSF registra uma fala do líder ou vice-líder, ou uma orientação geral "sim" que inclui expressamente o Governo, aceita pelo Plenário ou registrada pela Presidência. Esses casos estão separados na sensibilidade.
- **Ausências** (AP, P-NRV, NCom) ficaram fora do denominador.
- **"Educação":** inclui C&T/FNDCT, como define o protocolo. Duas votações são limítrofes: PL 4.725/2020 (educação prisional) e PEC 23/2021 (fiscal). Por isso os resultados aparecem com e sem elas.
- **Status no CSV:** para votos, "implementada" quer dizer voto registrado. Para votação simbólica sem voto individual, o status é "nao_confirmado". Para proposições não aprovadas, é "nao_executada".
- **Níveis de evidência:** todas as fontes usadas são de nível A (senado.leg.br, congressonacional.leg.br, planalto.gov.br, alerj.rj.gov.br).
