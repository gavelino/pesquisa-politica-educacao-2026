# Resumo da coleta – prefixo FLA2 (2ª rodada, lacunas da QP6 – Flávio Bolsonaro)

Data de acesso: 2026-10-02. Data de corte: 30/09/2026. Ferramenta: apenas WebFetch (WebSearch e curl bloqueados). Imprensa não foi usada. Este arquivo complementa `FLA_resumo.md` e não repete os seus registros. **O índice de alinhamento vigente (11/13 = 84,6%) não muda**: esta rodada não trouxe votos nominais novos.

## 1. O que foi buscado

**Relatorias no Senado (item 3):**
- serviço `dadosabertos/processo/relatoria?codigoParlamentar=5894`, sem filtro e em janelas de data sobrepostas: 2019; 2020–2022; 2023–jun/2024; 2023–2026; jul/2024–2026; 2024–2025;
- conferência de cada matéria candidata por `?codigoMateria=` e pela ficha da matéria (www25.senado.leg.br);
- serviço antigo `senador/5894/relatorias?comissao=CE`, que está descontinuado e retornou 0 registros.

**Emendas ao orçamento (item 1):**
- Portal da Transparência: página de consulta, endpoint `/emendas/consulta/resultado`, API `/api-de-dados/emendas`, host `www.`, `/busca` e página de download;
- Congresso Nacional: páginas de orçamento e LOA 2023 (`congressonacional.leg.br/web/orcamento`, para onde `www12.senado.leg.br/orcamento` redireciona);
- SIGA Brasil Emendas;
- Câmara: IG-Orçamento e páginas LOA 2022/2023;
- Senado Dados Abertos: `orcamento/lista`, `orcamento/oficios` e `processo/emenda?codigoParlamentarAutor=5894`.

**ALERJ (item 2):**
- visões por autor `flaviobolsonaroint` em `scpro0307`, `scpro0711`, `scpro1115`, `scpro1519` e `contlei`, com os parâmetros Expand, Start, Count, Collapse, ExpandView e RestrictToCategory;
- `SearchView&Query` (bolsonaro, flavio, BOLSONARO) nas visões gerais de leis (`c8aa0900…`) e de projetos (`18c1dd68…`);
- busca por chave do número de cadastro, por exemplo `20140302974`;
- documentos individuais (`OpenDocument`);
- perfil do deputado no site da ALERJ.

## 2. O que foi encontrado

### 2.1 Relatorias no Senado
A lacuna de FLA-A02 ficou parcialmente resolvida.

Flávio Bolsonaro **não teve nenhuma relatoria na Comissão de Educação (CE)**. Fora da CE, foram identificadas **6 relatorias** ligadas a educação, C&T ou ambiente escolar, todas entre 2022 e 2025. Nenhuma é de 2019–2021, e nenhuma das matérias virou lei até o corte.

**Educação em sentido estrito:**
- **PL 1.795/2023** (alarmes nas escolas, altera a LDB). Relatoria na CSP, com parecer favorável e uma emenda, aprovado em 10/12/2024.
- **PL 1.676/2023** (incolumidade das comunidades escolares, altera a LDB). Relatoria na CSP, com parecer favorável aprovado em 12/11/2024.
- **PL 2.315/2021** (direito à educação da pessoa com transtorno mental). Relatoria na CDH, com parecer favorável e substitutivo, aprovado em 08/10/2025.

**C&T:**
- **PL 2.374/2019** (importações de bens para pesquisa). Relatoria na CCT, com parecer favorável e 5 emendas, aprovado em 24/05/2023. A matéria foi remetida à Câmara em 16/07/2026.

**Matérias limítrofes:**
- **PL 1.678/2023** (violência em escolas, no Código Penal). Relatoria na CSP, com parecer favorável e 5 emendas, aprovado em 26/11/2024.
- **PL 1.657/2023** (recursos do FNSP para segurança escolar). Relatoria na CSP encerrada em 09/05/2024, sem parecer.

Itens descartados depois de conferidos, por não tratarem de educação: PL 382/2023, PDL 7/2023, PL 3.101/2023, PDL 206/2023, PL 1.473/2025 (ECA, internação), PL 5.228/2019 (primeiro emprego) e PLS 367/2017 (Lei Rouanet).

### 2.2 Emendas parlamentares para Educação (função 12)
**Nada foi obtido; a lacuna continua.** Nenhuma rota devolveu dados:
- **Portal da Transparência:** a página e o endpoint vieram vazios, porque o conteúdo é carregado por JavaScript. A API pede chave (HTTP 401) e o robots.txt bloqueia o host `www.` e a `/busca`.
- **SIGA Brasil:** é um painel Qlik, que depende de JavaScript.
- **Câmara:** HTTP 429 em todas as tentativas.
- **Senado Dados Abertos:** os serviços de orçamento não trazem valores por função.

Por isso também não foram levantados o total de emendas de Flávio nem a parcela destinada à educação.

### 2.3 ALERJ, 2003–2018
- **PEC 52/2013** (coautoria): trata de orçamento impositivo para emendas, no art. 210, §2º, da Constituição do ERJ. **Não é de educação.** Com isso fica resolvida a dúvida registrada em FLA-005.
- **Base de leis (contlei):** confirma que existem **leis ordinárias, resoluções e indicações legislativas** de autoria de Flávio Bolsonaro. Não foi possível listá-las, porque toda URL com parâmetros de navegação deu erro de servidor.
- **Base 2003–2007 (scpro0307):** não respondeu.

Nenhuma proposição de educação foi confirmada ou descartada. **Isso não prova que elas não existam.**

## 3. Lacunas
1. Emendas individuais na função 12: é preciso baixar o arquivo de emendas do Portal da Transparência ou usar a API com chave, filtrando autor = FLAVIO BOLSONARO e função = 12 para 2020–2026. Também é preciso calcular o total do autor. As URLs estão em `urls_FLA2.tsv`.
2. ALERJ: as três categorias da base contlei (Expand=1/2/3) e as categorias seguintes das bases scpro precisam ser abertas por navegador ou por script. A base 2003–2007 não foi lida. Votos nominais na ALERJ não foram buscados.
3. Relatorias: o serviço de dados abertos tem truncamento e contagens que mudam de uma chamada para outra. A varredura temática não é garantidamente exaustiva, e o total geral de relatorias não foi apurado.

## 4. Ressalvas metodológicas
- **Camada parlamentar:** as relatorias são atividade parlamentar e não têm efeito normativo. Um "parecer aprovado" quer dizer só que foi aprovado na comissão. Nenhuma das matérias virou lei.
- **Matérias limítrofes:** as de segurança pública e de direito penal no ambiente escolar (R04, R06) estão separadas das de educação em sentido estrito (R02, R03, R05) e de C&T (R01).
- **Simetria:** esta camada não é comparada com o grupo Lula, assim como em `FLA_resumo.md`. A mesma rota de emendas, se for aberta, deve servir só como contexto.
- **Fontes:** todas as usadas são de nível A (senado.leg.br, alerj.rj.gov.br, congressonacional.leg.br, portaldatransparencia.gov.br). As transcrições foram processadas pelo modelo do WebFetch e devem ser conferidas nos originais.
