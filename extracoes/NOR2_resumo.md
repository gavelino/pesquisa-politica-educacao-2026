# NOR2: 2ª rodada (lacunas de D2/D4/D5), resumo da coleta

- **Coletor:** prefixo NOR2. **Acesso:** 2026-10-02.
- **Corte:** grupo B de 01/01/2019 a 31/12/2022; grupo A de 01/01/2023 a 30/09/2026.
- **Produtos:**
  - 24 fontes (`fontes/NOR2-001` a `NOR2-024`, todas de nível A);
  - 20 linhas em `extracoes/NOR2.csv` (9 do grupo B e 11 do grupo A);
  - `fontes/urls_NOR2.tsv`, com 62 URLs.
- **Ferramentas:** WebSearch e curl estavam bloqueados, então tudo foi feito por WebFetch.
- **Bloqueios durante a coleta:**
  - camara.leg.br/proposicoesWeb: HTTP 429 em todas as tentativas;
  - TCU, pesquisa textual: HTTP 503 o dia todo;
  - STF (todos os hosts): HTTP 403;
  - gov.br/mec: CAPTCHA;
  - documentos sdleg do Senado: verificação anti-robô.

## 1. O que foi buscado
O procedimento foi o mesmo para os dois grupos.

| Item | Consulta |
|---|---|
| 1 Simetria de PLs do Executivo | API Câmara `proposicoes?siglaTipo=PL&codTema=46&autor=Poder Executivo&ano=AAAA` para cada ano de 2019 a 2026, mais uma consulta multianual de conferência (22 itens nas duas formas). Também `siglaTipo=PLP` (tema 46) e `PL,PLP` com tema 62 (C,T&I). Autoria conferida por amostragem em `/autores`, status em `/proposicoes/{id}` e número da lei em `/tramitacoes`. Leis conferidas no Planalto (vetos e assinaturas) |
| 2 Lei 15.367/2026 | Planalto (ementa integral, art. 1º, capítulos e cabeçalho). Leis 5.540, 9.192 e 9.394 no Planalto (busca por "15.367"). Câmara: tramitações, relacionadas, votações e orientações do PL 5.874/2025, ementas dos PLs 6.170/2025, 5.893/2025, 1/2026 e 173/2026 e das EMP 23 e 26. Senado: `dadosabertos/processo` (PL 5874/2025) |
| 3 Piso | EM 143/2026, relida. FNDE: `search_rss` com 5 termos e listas de legislação do Fundeb de 2020, 2022, 2023 e 2024. Portaria MEC 67/2022 (PDF). TCU: busca textual ("piso magistério 4.420,55", "2.886,24" e outras) e documento do Ac. 2590/2024. API Câmara: PDL/RIC com "piso". Senado Notícias (busca) |
| 4 Ministros (B) e simetria (A) | Planalto `_ato2019-2022/2019/dsn/` (404) e portal-legis (robots). API Câmara `keywords=Weintraub` (vazio). Senado `processo?termo=` (vazio). Método adotado: varredura de ementas de RIC com tema 46 por ano (2019, 2020, 2022, 2026), datas pelo `/proposicoes/{id}` e assinaturas de atos no Planalto |
| 5 STF | portal.stf.jus.br (listarProcessos, detalhe.asp?incidente=6036507), www.stf.jus.br, redir.stf.jus.br, noticias.stf.jus.br: todos com 403. TCU "ADI 6590": 503. Anotações do Planalto em D 10.502 e Lei 14.172 |

## 2. Achados

### 2.1 PLs e PLPs do Executivo com tema Educação, por grupo e status

**Grupo B (2019–2022): 8 PLs e nenhum PLP.**

| PL | Objeto | Status em 30/09/2026 |
|---|---|---|
| 11.279/2019 | Criação de IFs e de duas universidades no Amazonas | Enviado pela MSC 799/2018 (governo Temer) e **retirado pelo grupo B** (MSC 84/2019, 26/03/2019) |
| 2.401/2019 | Educação domiciliar | Prejudicado (NOR-B28) |
| 3.076/2020 | Future-se | Pendente (NOR-B29) |
| 5.010/2020 | Ensino naval | **Virou a Lei 14.296/2022**. Matéria limítrofe (ensino militar) |
| 5.011/2020 | Formação aeroespacial | Pendente. Limítrofe |
| 226/2022 | Terminologia TEA na LDB | Pendente no Senado |
| 6.162/2019 e 6.163/2019 | Planos regionais | Fora do escopo |

Pelo tema 62 (C,T&I) aparece ainda o PL 3.102/2022 (carreira de C&T), pendente.

Resultado do grupo B: 1 lei, e ela é limítrofe. Em escopo educacional, 4 PLs não aprovados e 1 retirado.

**Grupo A (2023–set/2026): 14 PLs e 1 PLP.**
- **9 viraram lei:**
  - 2.617/2023 → Lei 14.640;
  - 3.613/2023 → Lei 15.159 (limítrofe, penal);
  - 4.172/2023 → Lei 14.719;
  - 5.230/2023 → Lei 14.945;
  - 2.614/2024 → Lei 15.388;
  - 5.874/2025 → Lei 15.367;
  - 6.132/2025 → Lei 15.418 (Universidade Federal Indígena);
  - 6.133/2025 → Lei 15.457 (Universidade Federal do Esporte);
  - 4.951/2026 → Lei 15.520 (Universidade Federal da Fronteira Norte).
- **2 foram absorvidos** no substitutivo do PL 5.874: 5.893/2025 e 1/2026.
- **3 estão pendentes:** PL 964/2024 (cargos da UFAPE), PL 4.952/2026 (CEFETs viram universidades; no Senado) e PLP 265/2025 (infraestrutura escolar fora dos limites da LC 200).
- **1 está fora do escopo:** PL 5.789/2023 (plano regional, mesmo tratamento dos PLs 6.162 e 6.163 do grupo B).
- Leis 15.418, 15.457 e 15.520: sem veto.

**Relações com vetos registrados em NOR:**
- **Fronteira Norte (Lei 15.520):** o Executivo vetou integralmente o PL parlamentar da Unifron (NOR-A29, 31/07/2026) e apresentou projeto próprio em 10/08/2026, sancionado em 24/09/2026.
- **CEFETs:** a mesma sequência aconteceu (NOR-A28), mas o projeto do Executivo (PL 4.952/2026) segue pendente.

**Correções de atribuição:** são PLs do Executivo o PL 2.617/2023 (NOR-A07 marcava "não confirmado") e a origem da Lei 14.719/2023 (PRO-A13 e PRO-A14).

### 2.2 Lei 15.367/2026

**Fatos verificados:**
- **Sem vetos.** O Planalto não traz link de mensagem de veto e o Senado registra a sanção em 30/03/2026.
- **Senado:** aprovou em 10/03/2026 sem alterações e rejeitou as 93 emendas, inclusive a Emenda 91, "reitor".
- **Origem:** PLs 5.874/2025 e 6.170/2025, ambos do Executivo, aprovados na forma do substitutivo da CASP (relator em Plenário Dep. Átila Lira), em votação simbólica e sem orientação registrada.
- **Art. 1º, XXIII:** a lei diz que "estabelece critérios para a nomeação de dirigentes de instituições de ensino superior". Essa expressão não aparece nas ementas originais dos PLs do Executivo.
- **EMP 23:** propunha "paridade na escolha dos dirigentes das Universidades Federais" e foi apresentada ao substitutivo. Foi rejeitada.
- **Leis alteradas:** a LDB e a Lei 9.192 não foram alteradas. O art. 16 da Lei 5.540 foi revogado sem texto substitutivo.

**Inferência, não verificada:** a regra para universidades entrou na Câmara pelo substitutivo e está num dispositivo autônomo depois do art. 67, que não foi lido. Não foi possível confirmar o texto.

### 2.3 Piso do magistério (D5)
- **2022:** confirmada em fonte A a Portaria MEC 67, de 04/02/2022 (DOU de 07/02/2022, S1, p. 65, assinada por Milton Ribeiro). Ela homologa o Parecer 2/2022/SEB, mas **não traz valor nem percentual**.
- **EM 143/2026:** não contém série histórica.
- **2019–2021 e 2023–2024:** valores e portarias seguem não confirmados, nos dois grupos.

### 2.4 Ministros (D4)

**Grupo B: 4 titulares confirmados em fonte A**, por RICs da Câmara e atos assinados:

| Ministro | Evidência |
|---|---|
| Vélez | RIC de 05/02 e 25/02/2019 |
| Weintraub | RIC de 10/04/2019 e 03/02/2020 |
| Milton Ribeiro | RIC de 14/07/2020 e 22/03/2022; D 10.502 (30/09/2020); Portaria 67 (04/02/2022) |
| Victor Godoy | RIC de 31/03/2022 |

- Decotelli não tem fonte A.
- **As datas de nomeação e exoneração não foram confirmadas**, porque o DOU não estava acessível.

**Grupo A, pelo mesmo método:**
- Camilo Santana: RIC de 30/03/2026.
- Barchini: RIC de 22/04/2026; assina leis desde 28/05/2026.

### 2.5 STF
- **ADI 6590:** a existência está confirmada pela anotação do Planalto (incidente 6036507). Resultado e data **não confirmados**.
- **ADI 6926:** continua apenas a fonte B (TCU, PRO-012: improcedente, 24/06/2022).

## 3. Lacunas
1. **Texto da Lei 15.367 após o art. 67:** a regra sobre universidades, a cláusula de revogação e a vigência. É preciso baixar o DOU de 31/03/2026, p. 5, ou a RDF ao PL 5.874 (Câmara, codteor no TSV).
2. **Piso:** valores e portarias de 2019, 2020, 2021, 2023, 2024 e 2025, e o valor de 2022. Não foram encontrados em nenhuma fonte A/B acessível. É preciso repetir a busca no TCU quando o serviço voltar e baixar o DOU.
3. **Ministros:** datas dos decretos de nomeação e exoneração dos dois grupos, além de Decotelli.
4. **ADI 6590 e ADI 6926:** decisões do STF. O portal bloqueia acesso automatizado.
5. **Varredura sem filtro de tema:** a varredura de todos os PLs do Executivo não foi concluída (timeout). PLs de efeito educacional classificados em outros temas podem faltar nos dois grupos; o PL 6.170/2025, por exemplo, não tem o tema 46.
6. **Conteúdo dos PLs:** o inteiro teor dos PLs, das emendas e dos pareceres não foi lido (Câmara HTTP 429).

## 4. Ressalvas metodológicas
- **Contagens desiguais:** os períodos têm durações diferentes (48 contra 45 meses), e o grupo B tem ainda uma iniciativa herdada e retirada. O total de PLs depende da classificação temática da Câmara. As linhas NOR2-B06 e NOR2-A01 são inventários e não devem ser somadas às linhas NOR-B28, B29, A07, A18, A25 e A26.
- **Matérias limítrofes,** sugeridas para análise de sensibilidade nos dois grupos: Lei 14.296/2022 (ensino naval, B) e Lei 15.159/2025 (penal, A).
- **Origem codificada da Lei 15.367:** NOR-A25 usa "Executivo". NOR2-A09 usa "Legislativo_com_sancao", porque o dispositivo sobre dirigentes provavelmente veio do substitutivo. A decisão final fica para a síntese.
- **RIC como proxy:** RIC prova que a pessoa ocupava o cargo na data do requerimento, não a data da posse.
- **Extração processada:** o conteúdo do WebFetch passa por um modelo. Alguns resumos de tramitação, como o do Senado em NOR2-019, vieram parafraseados. Os números e as datas devem ser conferidos nos originais.
