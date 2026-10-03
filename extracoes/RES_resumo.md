# RES – D6 Indicadores de Resultado (QP7, secundária) – Resumo da coleta

Data de coleta: 2026-10-02 · Agente: RES · Fontes: RES-001 a RES-023 · Extrações: `extracoes/RES.csv` (70 linhas) · URLs para download: `fontes/urls_RES.tsv` (135 linhas)

> Indicadores reportados SEM atribuição causal. Cada linha do CSV marca o governo do ano de referência do dado, não quem o "causou". Resultados educacionais têm lag de vários anos: um Ideb ou Saeb de 2019 reflete trajetórias escolares anteriores a 2019; o de 2023 reflete em grande parte o período 2019–2022, e assim por diante.

## 1. O que foi buscado (strings e sites)
- **Ferramentas:** o WebSearch estava DESABILITADO para a organização (HTTP 403 do proxy). Toda a coleta foi feita por WebFetch, navegando em páginas oficiais e usando a view `folder_listing` do Plone para listar pastas do gov.br/inep.
- **Inep (gov.br/inep):** notícias Ideb/Saeb/Censo Escolar/Avaliação da Alfabetização; páginas de resultados do Ideb (aba "2005-2025"), do Saeb (abas 2017–2025), do Pisa (2018/2022/2025), da Avaliação da Alfabetização (2023–2025), do Censo Escolar (2018/2022/2025) e do Censo Superior (2018/2024); dados abertos (sinopses, taxas de rendimento e de transição); página de apresentações.
- **OCDE:** country notes do PISA 2022/2025 (sem conteúdo legível) e Education GPS (legível).
- **IBGE:** API SIDRA, tabela 7113.
- **CAPES:** dadosabertos.capes.gov.br (páginas dos conjuntos de dados), GEOCAPES e painel de indicadores (ambos dinâmicos).
- **CNPq:** painéis de dados, dadosabertos.cnpq.br e Relatórios de Gestão 2018–2025.
- **Bloqueados ou inacessíveis:**
  - download.inep.gov.br (robots/ConnectError): é o host de TODAS as planilhas e PDFs do Inep;
  - ideb.inep.gov.br;
  - gov.br/mec e gov.br/planalto (CAPTCHA);
  - gov.br/capes/notícias (401);
  - bi.cnpq.br e dadosabertos.cnpq.br;
  - web.archive.org;
  - buscadores;
  - PDFs da OCDE em /content/dam.

## 2. O que foi encontrado, por grupo
**Linha de base (2017–2018, gov. Temer)**
- Analfabetismo 15+ (IBGE, fonte A): 6,5% em 2017 e 6,3% em 2018.
- Ideb 2017 (5,8 / 4,7 / 3,8): só em fonte terciária, marcado `nao_confirmado`.
- Saeb 2017 e PISA 2018: só as URLs (lacuna).

**Grupo B (2019–2022)**
- Analfabetismo (fonte A): 6,1% em 2019 e 5,6% em 2022. Não há dado para 2020 e 2021.
- Ideb 2019 e 2021: `nao_confirmado` (fonte terciária).
- PISA 2022 (matemática 379, leitura 410, ciências 403): DERIVADO das variações publicadas pela OCDE; a confirmar.
- CNPq 2022: "concedeu 107 mil bolsas" (RG 2022, fonte A).
- Saeb 2019 e 2021: só as URLs (lacuna).
- Taxa de alfabetizados do Saeb 2021 (planilha revisada em 01/02/2024): só a URL (lacuna).

**Grupo A (2023–2025/26)**, todos com fonte A:
- **Ideb 2023:** 6,0 / 5,0 / 4,3 no total; 5,7 / 4,7 / 4,1 na rede pública.
- **Ideb 2025:** 6,3 / 5,3 / 4,5 no total; 6,1 / 5,0 / 4,3 na rede pública.
- **Saeb, rede pública (2023 e 2025):** 6 proficiências por edição.
- **PISA 2025:** matemática 377, leitura 408, ciências 409. As variações em relação a 2022 não são estatisticamente significativas.
- **Indicador Criança Alfabetizada (ICA):** 56% (2023), 59% (2024) e 66% (2025). Meta de 80% até 2030 (Lei 15.247/2025).
- **Censo Escolar 2025:** 46 milhões de matrículas, 10,1 milhões delas em tempo integral.
- **Analfabetismo:** 5,4% (2023), 5,3% (2024) e 4,9% (2025).
- **CNPq:**
  - cerca de 80 mil bolsistas/mês (2024);
  - R$ 1,347 bilhão executados em bolsas, valor que aparece tanto no RG 2024 quanto no RG 2025 (ALERTA: verificar);
  - 1.000 novas bolsas com recursos da PEC da Transição.

## 3. Lacunas
Os itens abaixo têm as URLs oficiais no TSV, mas os valores não foram lidos:
1. Ideb 2017, 2019 e 2021 em fonte primária (arquivo `divulgacao_brasil_ideb_2025.zip`).
2. Proficiências do Saeb 2017, 2019 e 2021, e o total Brasil (redes pública e privada) de 2023 e 2025.
3. PISA 2018 (todas as áreas) e PISA 2022 sem derivação.
4. Metas anuais do ICA e decimais (planilhas "resultados e metas").
5. Censo Escolar 2018–2024: matrículas totais e em tempo integral.
6. Censo Superior 2018–2024: matrículas e ingressantes em instituições federais.
7. CAPES: bolsas por ano (concessão DPB) e titulados 2017–2024. Os arquivos foram identificados, mas é preciso somá-los. Bolsas ativas (GEOCAPES): inacessível.
8. CNPq: série harmonizada 2018–2025. Os relatórios de gestão usam métricas diferentes e as tabelas estão em imagem.
9. Taxas de abandono 2017–2025: só arquivos zip.
10. Evasão: a série oficial termina em 2021–2022, então não existe para o período A (assimetria de disponibilidade).
11. Analfabetismo 2020–2021: inexistente (pandemia), afeta o período B.

## 4. Ressalvas metodológicas e de comparabilidade
- **Ideb e Saeb:**
  - o Saeb do ensino médio passou a ser censitário para escolas públicas em 2019;
  - 2021 foi aplicado na pandemia, com participação reduzida e aprovação flexibilizada (continuum curricular). O componente de fluxo do Ideb fica inflado, e o Inep publicou nota de cautela;
  - os dados de 2025 aparecem como "censitário";
  - a nota técnica de 2023 trata da base amostral.
  - Todas essas ressalvas devem ser confirmadas literalmente nas notas listadas em RES-003 e RES-005.
- **ICA:** indicador criado em 2023. A comparação com o período B só é possível pelo Saeb do 2º ano (2019 e 2021, amostral) com o padrão 743 aplicado depois. Há divergência textual sobre a meta: a página do Inep fala em 100%, a lei em 80%.
- **PISA:** o domínio principal muda a cada ciclo; 2022 foi aplicado após a pandemia; os valores de 2022 aqui são derivados.
- **Analfabetismo:** é um indicador de estoque populacional, pouco sensível a políticas de curto prazo.
- **CAPES e CNPq:**
  - as métricas são heterogêneas (concessão anual, bolsistas/mês, bolsas-ano pagas);
  - dados da CAPES foram revisados retroativamente (2017–2020 substituídos em 12/2023; 2021–2023 reprocessados em 03/2025).
- **Convenções do CSV, desvios deliberados do protocolo:**
  - o campo `grupo` usa `linha_base` para 2017–2018 (governo Temer), porque o protocolo só prevê A, B e Flavio. Atribuir esses anos a B seria incorreto;
  - séries com vários anos em lacuna usam `linha_base` com a faixa de anos indicada;
  - `origem` = Executivo designa o órgão que produz o dado (Inep, IBGE, CAPES, CNPq), não autoria de política;
  - `status` = implementada significa "dado publicado e verificado em fonte A"; `nao_confirmado`, "valor pendente ou não verificado".
- **Datas:** onde a data exata de divulgação não foi verificada, o campo `data` ficou vazio.
- **Simetria:** os mesmos indicadores e fontes foram buscados para todos os anos. As assimetrias são de DISPONIBILIDADE dos dados (evasão sem dado em A; analfabetismo e ICA sem dado em partes de B) e de ACESSO técnico (arquivos do Inep). Não refletem escolha do coletor.
