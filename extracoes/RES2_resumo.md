# RES2 – D6 Indicadores de Resultado, 2ª rodada (lacunas de RES) – Resumo

Data de coleta: 2026-10-02 · Agente: RES2 · Fontes: RES2-001 a RES2-022 · Extrações: `extracoes/RES2.csv` (38 linhas) · URLs: `fontes/urls_RES2.tsv` (49 linhas)

> Indicadores reportados SEM atribuição causal. O campo `grupo` marca o governo do ano de referência do dado (convenção de RES: `linha_base` = 2017–2018/gov. Temer ou parâmetros anteriores). Resultados educacionais têm defasagem (lag) de vários anos.

## 1. O que foi buscado
- **Ferramentas:** só WebFetch. WebSearch e curl estavam bloqueados. Não repeti as linhas de RES.
- **Inep (gov.br/inep):**
  - `search_rss` com "Ideb 2019", "Ideb 2021", "Saeb 2021 resultados", "Pisa 2022", "Pisa 2018 Brasil leitura", "Resumo Técnico Censo Escolar", "Notas Estatísticas Censo Escolar" e "relatorio de gestao";
  - `folder_listing` das pastas de notícias (ideb, saeb, censo-escolar, censo-da-educacao-superior), de ideb/resultados e de censo-escolar/resultados;
  - páginas por ano: Saeb 2019 e 2021; Pisa 2018, 2022 e 2025; Pisa/histórico; Censo Escolar 2021 e 2024;
  - apresentações, Ideb/metas, Ideb/outros-documentos, Inep Data e Relatório de Gestão 2020 (hospedado em gov.br).
- **Inep, download.inep.gov.br e subdomínios** (seriepne, ideb): ConnectError/robots em todas as tentativas.
- **OCDE:**
  - Country Notes 2018 e 2022 em HTML: devolvem só a navegação;
  - PDFs em /content/dam: bloqueados por robots;
  - Volume I 2022 (full-report/component): sem conteúdo;
  - oecd-ilibrary: 404;
  - Education GPS: só traz 2025.
- **Banco Mundial:** API, indicadores LO.PISA.MAT, REA e SCI.
- **Senado:**
  - busca em www12.senado.leg.br/publicacoes ("Ideb", "Pisa 2022", "Saeb");
  - Boletins 109 e 112 e TD 335;
  - legis.senado (avulso do PL 2.614/2024): bloqueado por verificação de segurança.
- **Câmara:**
  - API dadosabertos (PL 2.614/2024, id 2443764);
  - inteiro teor: HTTP 429 em 4 tentativas;
  - bd.camara: SPA ou 404.
- **CGU:**
  - páginas da PCPR;
  - API DSpace basedeconhecimento: localizei a PCPR 2021, mas o PDF fica truncado;
  - busca de texto completo: sem resultados.
- **IBGE:**
  - Anuário 2023 e 2024 (anuario.ibge.gov.br): não há tabelas de matrículas;
  - Brasil em Síntese: dados só até 2014.
- **CAPES:**
  - gov.br/capes: "Estamos em manutenção" (relatórios de gestão e busca);
  - API CKAN: robots;
  - GEOCAPES: página dinâmica.
- **CGEE** (Mestres e Doutores 2024): só navegação.
- **IPEA e repositorio.ipea:** ConnectTimeout/robots.
- **SciELO** (busca): robots.
- **web.archive.org:** bloqueado.
- **gov.br/mec:** CAPTCHA.
- **Plataforma Nilo Peçanha:** DNS.
- **Agência Brasil:** usada só para localizar dados (nível D). Fontes: tags ideb (2 páginas), pisa, censo-escolar e censo-da-educacao-superior, além das reportagens de cada divulgação.

## 2. O que foi encontrado

**Linha de base (2017–2018)**
- **PISA 2018:** leitura 413 (412,87), matemática 384 (383,57), ciências 404 (403,62).
  - Nível B (World Bank/EdStats), corroborado em D (Agência Brasil 03/12/2019).
  - Coerente com o Inep (A): estagnação desde 2009; ciências 2025 acima de 2018; leitura e matemática abaixo.
  - A base B foi validada contra os valores A do Inep para 2009, 2012 e 2015.
  - Fecha RES-P001 em nível B.
- **Ideb 2017 rede pública:** 5,5 / 4,4 / 3,5 (D). Rede privada: 7,1 / 6,4 / 5,8.
- **Metas do Ideb 2021** (Lei 13.005/2014, via Consultoria do Senado, B): 6,0 / 5,5 / 5,2.

**Grupo B (2019–2022)**
- **Ideb 2019 rede pública:** 5,7 / 4,6 / 3,9 (D).
- **Ideb 2019 e 2021 totais:** coincidem com RES e agora têm mais uma fonte D. Datas de divulgação: 15/09/2020 e 16/09/2022.
- **Saeb 2019 → 2021** (D, valores arredondados, provável total Brasil):

  | Ano/etapa | LP 2019 | LP 2021 | MT 2019 | MT 2021 |
  |---|---|---|---|---|
  | 5º ano | 215 | 208 | 228 | 217 |
  | 9º ano | 260 | 258 | 263 | 256 |
  | EM | 278 | 275 | 277 | 270 |
  | 2º ano | 750 (referência da escala) | 725,5 | 750 (referência da escala) | 741 |

- **PISA 2022 ciências = 403:** a Agência Brasil (D) corrobora o valor derivado. Matemática e leitura de 2022 continuam derivadas.
- **Atendimento em creche:** 37,0% (2019) e 37,3% (2022). Pré-escola: 93% (2022). Fonte B que reproduz o Inep, 5º ciclo do PNE.
- **Concluintes de graduação 2022:** 1,2 milhão no total, cerca de 238 mil em instituições públicas (B).

**Grupo A (2023–2026)**
- **Matrículas em cursos técnicos subsequentes 2023:** 1.078.193 (B).
- **Saeb, ensino médio da rede estadual:**
  - LP: 271,7 (2023) e 275,8 (2025);
  - MT: 267,3 (2023) e 271,4 (2025) (D).
- **Ideb 2023:** corroborado em D (data de divulgação ≈ 14/08/2024).

## 3. Lacunas que permanecem
1. **Ideb 2017, 2019 e 2021 em fonte A ou B.** As notícias do Inep de 2018–2025 foram REMOVIDAS: as pastas do gov.br/inep só listam itens de 2026. Todos os PDFs e planilhas estão em download.inep. Ideb 2021 da rede pública: nenhum valor localizado.
2. **Saeb:** total Brasil (pública e privada) de 2023 e 2025, Saeb 2017, e valores não arredondados de 2019 e 2021.
3. **PISA 2022:** matemática e leitura em fonte não derivada.
4. **Censo Escolar 2018–2024:** matrículas totais e em tempo integral. As apresentações das coletivas de 2020–2022 foram identificadas (RES2-013).
5. **Censo Superior 2018–2024:** matrículas e ingressantes federais. As apresentações de 2019–2022 foram identificadas.
6. **CAPES:** titulados e bolsas 2018–2024 (site em manutenção; API bloqueada).

**Rotas para resolver** (todas simétricas entre governos):
- `baixar_fontes.sh` com as URLs do TSV;
- PCPR de cada exercício 2019–2025 (CGU), com indicadores dos programas MEC/CAPES;
- inteiro teor do PL 2.614/2024, cujo diagnóstico tem as séries do PNE (Câmara: 429; Senado: verificação de segurança);
- Relatório do 5º ciclo de monitoramento do PNE (Inep).

## 4. Ressalvas metodológicas e de comparabilidade
- **Nível D:** os valores só têm fonte D e estão como `nao_confirmado`. Os números de proficiência do Saeb foram arredondados pela reportagem.
- **Saeb 2021:**
  - planilhas corrigidas entre o fim de 2022 e o início de 2023 (erros amostrais secundários), e de novo em 01/02/2024 (taxa de alfabetização);
  - o valor de 2019 = 750 no 2º ano é a referência da escala criada em 2019, não um desempenho comparável.
- **Ideb 2021:** pandemia, aprovação flexibilizada (recomendação do CNE), 92% das escolas com ensino remoto ou híbrido. O componente de fluxo fica inflado.
- **Mudanças entre edições:**
  - o Saeb do ensino médio passou a ser censitário para escolas públicas em 2019;
  - no PISA, o modo de aplicação mudou: computador desde 2015 e leitura adaptativa em 2018.
- **Grupo das metas do Ideb 2021:** as metas são parâmetros da lei de 2014, não ações de A ou de B, e foram registradas como `linha_base`.
- **Convenção de `status`:** em RES2, `implementada` = dado verificado em fonte A ou B. Em RES, a mesma marca exigia fonte A.
- **Classificação do World Bank/EdStats:** classifiquei a base como B por analogia, porque o protocolo não prevê organismos multilaterais. Validação cruzada: os valores de 2009, 2012 e 2015 da base coincidem com os do Inep (A).
- **Simetria:** as mesmas buscas foram feitas para 2017–2025. As assimetrias que restam são de acesso (exclusão das notícias antigas do Inep e bloqueio do download.inep), não de escolha do coletor.
