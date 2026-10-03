---
name: "estudo-comparativo-acoes-governo"
description: "Use para conduzir um estudo científico e replicável que compara ações efetivas de governos ou candidatos em um tema (ex.: educação), com protocolo PICOC, fontes arquivadas e relatórios."
---

# Estudo comparativo de ações de governo (protocolo PICOC)

Roteiro para comparar, com método científico, o que grupos políticos FIZERAM num tema. Ações efetivas contam; propostas e promessas não contam. Foi derivado de um estudo real: Lula 3 × grupo Bolsonaro em Educação, out/2026. Responda sempre no idioma do usuário.

## Princípios inegociáveis
1. **Só ações efetivas.** Contam atos publicados, execução orçamentária, programas com dados, votos nominais e auditorias. Ficam de fora propostas de campanha, discursos e redes sociais.
2. **Simetria.** Mesmas buscas, fontes, indicadores e profundidade para todos os grupos. Toda busca feita para um lado tem a equivalente para o outro. Registre achados favoráveis e desfavoráveis aos dois.
3. **Atribuição justa.** Em lei de iniciativa do Congresso, registre a POSIÇÃO do Executivo (sanção, veto, orientação de voto), não a lei inteira. Ação que cruza mandatos é registrada nos dois lados.
4. **Sem índice composto.** Compare dimensão por dimensão, cada conclusão com seu grau de confiança.
5. **Protocolo congelado antes da coleta.** Toda mudança vira emenda versionada e entra no LOG_DESVIOS.md.
6. **Neutralidade de linguagem.** Fatos com números, datas e links, sem adjetivos. Investigações e processos aparecem com o status exato e data (ex.: "investigação em curso em ago/2024"), confirmados em pelo menos 2 veículos.
7. **Posicionalidade.** Se o pesquisador tem interesse no tema (ex.: docente de universidade federal num estudo de educação), declare isso como ameaça à validade.

## Fase 1: Protocolo (antes de qualquer busca)
Combine com o usuário (AskUserQuestion), salve no projeto e na pasta local:
- **PICOC:**
    - P (população): ações de que esfera e área.
    - I e C (grupos comparados): com períodos de duração parecida. I e C são rótulos, sem hierarquia.
    - O: dimensões. Padrão: D1 Financiamento · D2 Marco normativo · D3 Programas · D4 Gestão e governança · D5 Valorização dos profissionais · D6 Resultados (secundário, sem atribuição causal).
    - C (contexto): país, nível, data de corte.
- **Proxy:** se um candidato nunca governou, use o governo do seu grupo como proxy e TESTE o proxy. Exemplo: índice de alinhamento dos votos nominais do candidato à orientação daquele governo, só com votos de orientação documentada e com análise de sensibilidade.
- **Questões de pesquisa:** uma por dimensão, mais a do proxy.
- **Hierarquia de evidência:**
    - A: dado oficial ou ato publicado.
    - B: órgão de controle (TCU/CGU) ou artigo revisado por pares.
    - C: entidades e associações (registre a posição institucional).
    - D: imprensa de referência.
    - Toda ação incluída precisa de A ou B.
    - D (emenda usual, com o usuário): serve para fatos biográficos, exemplos e detalhes, sempre com link; fatos contestados ou valores exigem 2 veículos independentes; não substitui A/B em valores orçamentários e indicadores.
    - Wikipedia não é fonte: serve só para achar notícias.
- **Controles:**
    - Deflacionar por IPCA (número-índice de dezembro, base no último ano completo).
    - Usar médias anuais e marcar o ano corrente como parcial.
    - Verificação por amostragem (≥10% por agente independente; o pesquisador confere ≥20% contra os originais).
- **Fatores de confusão a declarar:** pandemia, regra fiscal, composição do Congresso, emendas parlamentares, regras constitucionais que crescem sozinhas (ex.: Fundeb), defasagem de indicadores.

## Fase 2: Estrutura da pasta (local do usuário + espelho no workspace)
```
<estudo>/
  README.md  PROTOCOLO_PICOC.md  INSTRUCOES_COLETA.md  LOG_DESVIOS.md  RELATORIOS.md
  baixar_fontes.sh
  fontes/<ID>.md   fontes/urls_<PREFIXO>.tsv   fontes/lista_urls_consolidada.tsv   fontes/indice_fontes.csv
  extracoes/<PREFIXO>.csv   extracoes/<PREFIXO>_resumo.md
  analise/matriz_consolidada.csv   analise/<serie>_valores_reais.csv
  verificacao/amostra_verificacao.csv  resultado_verificacao.csv  resumo_verificacao.md
```
- **Pasta local:** peça acesso a uma pasta que o app consiga conceder (ex.: ~/Documents). Pastas em Library/CloudStorage (Google Drive) são recusadas.
- **Sincronização:** trabalhe no workspace e sincronize com o Mac assim: `tar -czf` → `device_commit_files` → `tar --overwrite -xzf` via device_bash. Isso respeita o limite de 50 arquivos por commit e o bloqueio de exclusão.

### INSTRUCOES_COLETA.md (entregar a todos os coletores)
Deve conter: contexto e grupos; regras de neutralidade e atribuição; critérios de inclusão e exclusão; hierarquia de evidência; ferramentas (ver Fase 3); e o formato de saída abaixo.
- **Fonte** `fontes/<PREFIXO>-<nnn>.md`, com frontmatter `id, titulo, orgao, url, data_publicacao, data_acesso, nivel_evidencia, grupo, dimensao, metodo_captura` e as seções "Trechos extraídos (literais)" e "Notas do coletor".
- **Extração** `extracoes/<PREFIXO>.csv` (UTF-8, `;`, aspas quando há `;` no campo), com cabeçalho EXATO:
  `id_acao;grupo;dimensao;titulo;data;instrumento;origem;tipo;status;valor_nominal;unidade_valor;ano_valor;fontes_primarias;nivel_evidencia;fontes_corroboracao;observacoes`
    - `origem` ∈ Executivo | Legislativo_com_sancao | Legislativo_veto_derrubado | Judiciario | Parlamentar
    - `tipo` ∈ expansao | manutencao | corte_descontinuacao | reforma | reversao | atividade_parlamentar | voto | indicador
    - `status` ∈ implementada | parcial | revertida | nao_executada | nao_confirmado
- **URLs:** `fontes/urls_<PREFIXO>.tsv` com `ID\tURL\ttipo`, incluindo arquivos brutos não lidos.
- **Resumo** `extracoes/<PREFIXO>_resumo.md`: o que foi buscado, achados por grupo, lacunas e ressalvas.

## Fase 3: Coleta (subagentes em paralelo, um por dimensão)
- **Agentes:** lance um agente `general-purpose` por dimensão, com prefixo próprio (FIN, NOR, PRO, GES, <candidato>, RES), todos na MESMA mensagem para rodarem em paralelo. Cada prompt traz a lista do que levantar para CADA grupo.
- **Rede:** a de algumas organizações bloqueia curl e WebSearch. Teste logo no início com `curl` (status 000 = bloqueado) e use WebFetch. Nunca contorne um bloqueio do WebFetch por outros meios.
- **Rotas que funcionaram (Brasil, out/2026):**
    - planalto.gov.br: leis, decretos, MPs, mensagens de veto. URLs como `/ccivil_03/_ato2023-2026/<ano>/lei/L<n>.htm`.
    - Dados abertos do Senado (`legis.senado.leg.br/dadosabertos`): votações por parlamentar e por matéria, autorias, relatorias, listas de MPV/VET por ano. A orientação do Governo só aparece no Diário do Senado: `legis.senado.leg.br/diarios/BuscaPaginasDiario?codDiario=..&paginaInicial=..&paginaFinal=..`.
    - API da Câmara (`dadosabertos.camara.leg.br/api/v2`): proposições, autores, orientações. Filtre por tema (`codTema=46` = Educação) e autor "Poder Executivo" para comparar a taxa de aprovação dos projetos de cada governo.
    - TCU (`pesquisa.apps.tcu.gov.br/rest/publico/base/acordao-completo/documentosResumidos?termo=...`): acórdãos. Às vezes fica fora do ar (503).
    - Tesouro/SICONFI (`apidatalake.tesouro.gov.br/ords/siconfi/tt/`): DCA e RREO por função e subfunção. Confira pelas identidades contábeis (empenhado = liquidado + RAP não processado).
    - SIOP SPARQL (`www1.siop.planejamento.gov.br/sparql/`): orçamento por ação/UO e ano. Exemplo: `SELECT ?a SUM(?e) WHERE{?i loa:temAcao ?a;loa:valorEmpenhado ?e.?a loa:codigo "20RK"}`. Com curl, use `-g`.
    - IBGE SIDRA (`apisidra.ibge.gov.br/values/t/1737/...`): IPCA.
    - Inep: páginas gov.br às vezes abrem.
    - Imprensa: Agência Brasil, Agência Senado/Câmara, Poder360, CNN Brasil, Gazeta do Povo, Metrópoles, achadas pelas páginas de tag e pela busca interna da Agência Senado.
- **Rotas que costumam falhar:** gov.br/MEC (CAPTCHA), DOU (robots), Portal da Transparência (JS ou chave de API), download.inep.gov.br, Lattes, STF, G1, Folha, Estadão, O Globo, Valor, UOL e BBC. Registre o que falhou como lacuna, em ambos os grupos.
- **Segunda rodada:** leia os resumos, liste as lacunas e lance nova rodada com prefixos `<PREFIXO>2`, sempre com o mesmo procedimento para os dois lados.

## Fase 4: Consolidação e verificação
1. **Validação dos CSVs:** todo CSV com 16 colunas. Corrija `;` sem aspas juntando os campos excedentes no título.
2. **Consolidação:** gere `analise/matriz_consolidada.csv` (UTF-8 com BOM, coluna `coletor`), `fontes/indice_fontes.csv` (do frontmatter) e `fontes/lista_urls_consolidada.tsv` (URLs únicas com IDs).
3. **Deflação:** séries em R$ de dez/<ano-base>, com o fator registrado por ano, mais as médias anuais por grupo e a variação %.
4. **Verificação independente:** amostra estratificada por coletor e grupo (seed fixa, ~12%), conferida por agente verificador cético que reabre as fontes e classifica cada item como CONFIRMADO | DIVERGENTE | NAO_VERIFICAVEL | CARACTERIZACAO_INADEQUADA. Aplique as correções e registre-as no LOG.
5. **Revisões de simetria:** se a verificação achar erro que desfavorece um lado, revise o arquivo inteiro daquele lado (ex.: rechecar TODAS as orientações de voto "indisponíveis"). Também cheque se cortes e bloqueios foram levantados nos dois períodos com o mesmo critério.
6. **Conferência pontual:** reconfira você mesmo 1–2 números-chave de cada nova rota de dados.

## Fase 5: Relatórios (Claude Docs; carregue a skill de docs primeiro)
1. **Relatório técnico.**
    - Seções: resumo executivo (tabela QP × resposta × confiança); método; uma seção por QP, começando pela do proxy; síntese comparativa por dimensão; limitações e posicionalidade; rastreabilidade (contagens, IDs, como replicar).
    - Gráficos desenhados à mão a partir das linhas, com título que já diz o achado. Para orçamento, use painéis pequenos com barras anuais, linha tracejada da média de cada governo e divisória entre períodos. Para indicadores, linhas com pontos vazios onde a fonte não é oficial. Legendas citam as fontes e os IDs.
    - Cada seção termina com "Confiança: alta/média/baixa" e a justificativa.
2. **Relatório para o público geral:** resultados primeiro (5–6 achados numerados e um gráfico de abertura), depois área por área, o que a pesquisa não diz, como foi feita (PICOC em linguagem simples, níveis de evidência, etapas, verificação) e como conferir e repetir, com links das fontes oficiais.
3. **Linguagem:**
    - Comparação de médias é "X% a mais que", não "cresceu X%".
    - Em educação, o usuário pode preferir "investimento" a "gasto". Nesse caso, defina o termo no método ("todo recurso aplicado, não só o grupo de despesa Investimentos") e mantenha nomes oficiais como "Teto de Gastos".
    - Votos explicados sem ambiguidade ("votou contra a proibição de bloquear o fundo", não "contra proibir cortes").
4. **Pontos fáceis de esquecer:** traga os dados que mudam o quadro para os dois lados. Exemplo: em valorização docente, inclua o piso da educação básica ano a ano e não só os servidores federais.
5. **Perfis de dirigentes (opcional):** use rubrica objetiva idêntica para todos (formação na área; docência; gestão setorial; gestão executiva; passagem anterior pelo órgão), mais tempo no cargo e motivo da saída com links. Sem nota global.

## Fase 6: Replicabilidade e entrega
- Gere `baixar_fontes.sh` (abaixo), para o usuário rodar no Terminal fora do Claude quando a rede bloquear downloads. Explique em uma linha que os números devem ser conferidos nos originais antes de citar.
- Atualize LOG_DESVIOS.md, README.md e RELATORIOS.md (com os links dos docs). Salve o protocolo e o índice de relatórios no projeto (project_write).
- Na resposta final: 1–2 frases com o resultado, lacunas principais e o próximo passo (baixar os originais e conferir 20%).

```bash
#!/bin/bash
# baixar_fontes.sh — baixa originais e gera manifesto SHA-256 (bash 3.2/macOS)
set -u; cd "$(dirname "$0")" || exit 1
LISTA="fontes/lista_urls_consolidada.tsv"; DEST="fontes/originais"; MANIF="$DEST/manifesto.tsv"
FILTRO="${1:-}"; TAB=$'\t'; UA="Mozilla/5.0 (Macintosh) Safari/605.1.15"
mkdir -p "$DEST"
[ -f "$MANIF" ] || printf "n\tids\turl\tarquivo\thttp_status\tbytes\tsha256\tdata_utc\n" > "$MANIF"
tail -n +2 "$LISTA" | while IFS=$'\t' read -r n ids url tipo; do
  [ -z "$url" ] && continue
  if [ -n "$FILTRO" ] && [[ "$ids" != *"$FILTRO"* ]]; then continue; fi
  ext="${tipo:-bin}"; arq="$DEST/${n}_${ids%%|*}.${ext}"
  if grep -q "^${n}${TAB}.*${TAB}200${TAB}" "$MANIF" 2>/dev/null && [ -s "$arq" ]; then continue; fi
  status=$(curl -sS -g -L --compressed --retry 3 --retry-delay 5 --max-time 180 -A "$UA" -o "$arq" -w "%{http_code}" "$url" 2>/dev/null); [ -z "$status" ] && status=000
  if [ -f "$arq" ]; then bytes=$(wc -c < "$arq" | tr -d ' '); sha=$(shasum -a 256 "$arq" | cut -d' ' -f1); else bytes=0; sha=""; fi
  printf "%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\n" "$n" "$ids" "$url" "$arq" "$status" "$bytes" "$sha" "$(date -u +%Y-%m-%dT%H:%M:%SZ)" >> "$MANIF"
  echo "[$status] $n $ids"; sleep 1
done
tail -n +2 "$MANIF" | cut -f5 | sort | uniq -c
```

## Armadilhas já vistas
- O WebFetch parafraseia. Peça "transcreva LITERALMENTE" e confira valores por identidades contábeis ou por uma segunda consulta.
- Listas oficiais vêm truncadas. "Não localizado" não prova inexistência; diga isso no texto.
- Imprensa erra números de atos (ex.: "Decreto 370" no lugar de 11.370). Prevalece a fonte A.
- Função orçamentária ≠ órgão. Ex.: a função 12 não inclui a complementação ao Fundeb (função 28).
- Proposta de lei orçamentária (PLOA) não é ação efetiva: use só como contexto.
- Não use `rm -rf` com glob em diretórios do projeto. Para testes, use a pasta de rascunho.