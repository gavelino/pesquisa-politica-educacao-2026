# Educação: ações efetivas do governo Lula 3 × grupo Bolsonaro (2019–2026)

Estudo comparativo das **ações efetivas** em educação federal do governo Lula 3 (jan/2023–set/2026) e do governo Jair Bolsonaro (2019–2022). O governo Jair Bolsonaro é usado como referência (*proxy*) do grupo político de Flávio Bolsonaro, que nunca exerceu cargo executivo. Propostas e promessas de campanha não entram na análise.

- **Método:** protocolo PICOC, congelado antes da coleta (v1.0 em 02/10/2026; emenda v1.1 em 03/10/2026).
- **Data de corte:** 30/09/2026.
- **Responsável:** Guilherme Amaral Avelino (SERG/UFPI).
- **Licença:** [CC BY 4.0](LICENSE). Pode ser usado com atribuição. Como citar: [CITATION.cff](CITATION.cff).

> **Status:** os números vêm de fontes oficiais lidas por ferramenta automatizada e passaram por verificação independente por amostragem (90,5% confirmados, sem divergência numérica), feita por um agente de IA separado dos coletores. Os arquivos originais são baixados por `baixar_fontes.sh`. Antes de citar um número, confira na fonte original.

> **Aviso sobre validação.** O estudo seguiu um protocolo definido antes da coleta e métodos científicos consolidados e replicáveis: PICOC, hierarquia de evidências, regras de simetria e verificação por amostragem. O pesquisador definiu as perguntas, o protocolo e suas emendas. Coleta, extração, verificação e redação dos relatórios foram feitas de forma automatizada por agentes de inteligência artificial (Claude, da Anthropic). **O estudo não passou por validação humana que ateste as conclusões.** A automação foi uma escolha deliberada: num tema polarizado, o objetivo é reduzir vieses humanos na seleção e na interpretação das evidências. A automação não elimina todo viés, porque os modelos de IA e a disponibilidade desigual de fontes também podem distorcer resultados. Por isso, todos os dados, fontes e decisões estão neste repositório, abertos para auditoria e replicação.

## Questões de pesquisa

| QP | Dimensão |
|---|---|
| QP1 | Financiamento: orçamento federal da educação, universidades, IFs, CAPES, CNPq e FNDCT, em valores reais |
| QP2 | Marco normativo: leis, decretos, MPs, vetos e posição do Executivo |
| QP3 | Programas criados, expandidos ou encerrados, e sua execução |
| QP4 | Gestão e governança: rotatividade, perfil dos ministros, achados do TCU |
| QP5 | Valorização docente: piso do magistério, carreira federal |
| QP6 | Atuação parlamentar de Flávio Bolsonaro em educação (validação do *proxy*) |
| QP7 | Indicadores de resultado (Ideb, Saeb, PISA), sem atribuição causal |

## Estrutura do repositório
```
├── README.md                  ← este arquivo
├── PROTOCOLO_PICOC.md         ← protocolo (v1.1)
├── INSTRUCOES_COLETA.md       ← instruções comuns dadas aos coletores
├── LOG_DESVIOS.md             ← desvios do protocolo e correções aplicadas
├── RELATORIOS.md              ← onde estão os relatórios finais
├── RELATORIO_PRELIMINAR.md    ← versão preliminar (histórico)
├── relatorios/                ← PDFs dos relatórios finais (técnico e para o público geral)
├── baixar_fontes.sh           ← baixa os ORIGINAIS de todas as fontes e gera manifesto SHA-256
├── skill/                     ← skill do Claude para replicar o estudo em outros temas e contextos
├── fontes/
│   ├── <ID>.md                ← 1 arquivo por fonte: URL, órgão, data de acesso, nível de evidência e trechos extraídos
│   ├── indice_fontes.csv      ← índice de todas as fontes
│   ├── urls_<PREFIXO>.tsv     ← URLs por coletor
│   ├── lista_urls_consolidada.tsv ← URLs únicas (entrada do script)
│   └── originais/manifesto.tsv ← gerado pelo script (os arquivos baixados não são versionados)
├── extracoes/
│   ├── <PREFIXO>.csv          ← formulário de extração (16 colunas, separador ;)
│   └── <PREFIXO>_resumo.md    ← buscas feitas, achados por grupo, lacunas e ressalvas
├── analise/
│   ├── matriz_consolidada.csv ← todas as extrações (UTF-8 com BOM, abre no Excel)
│   └── financiamento_valores_reais.csv ← séries deflacionadas (IPCA, base dez/2025)
└── verificacao/               ← amostra, resultado da verificação independente e revisões de simetria
```

### Prefixos dos IDs
| Prefixo | Conteúdo |
|---|---|
| FIN, FIN2, FIN3 | D1 Financiamento (Tesouro/SICONFI, decretos de programação, SIOP) |
| NOR, NOR2 | D2 Marco normativo |
| PRO, PRO2 | D3 Programas |
| GES, GES2, GES3 | D4 Gestão e D5 Docentes; perfil dos ministros |
| FLA, FLA2 | QP6, Flávio Bolsonaro |
| RES, RES2 | D6 Indicadores |
| IMP1, IMP2, IMP3 | Exemplos de imprensa de referência (nível D, protocolo v1.1) |

### Níveis de evidência
| Nível | Tipo | Uso |
|---|---|---|
| A | Dado oficial ou ato publicado (Planalto, Tesouro, SIOP, Senado, Câmara, Inep, IBGE) | Sustenta conclusões |
| B | Órgão de controle (TCU) ou estudo revisado por pares | Sustenta conclusões |
| C | Entidades e associações | Apenas corrobora |
| D | Imprensa de referência | Detalhes, exemplos e biografias, sempre com link; fatos contestados exigem 2 veículos |

## Como conferir e replicar
1. Leia `PROTOCOLO_PICOC.md` e `INSTRUCOES_COLETA.md`.
2. Para conferir um dado, procure o ID (ex.: `FIN3-A065`) em `analise/matriz_consolidada.csv` e abra `fontes/<ID-da-fonte>.md`.
3. Para baixar os originais, rode `bash baixar_fontes.sh` (ou `bash baixar_fontes.sh FLA` para um só coletor). O script grava status HTTP, tamanho e SHA-256 de cada arquivo em `fontes/originais/manifesto.tsv`. Páginas com CAPTCHA (gov.br) ou que recusam robôs (Diário Oficial) devem ser salvas manualmente.
4. As consultas orçamentárias do SIOP (SPARQL) estão em `fontes/urls_FIN3.tsv`. Com curl, use a opção `-g`.

## Replicar o estudo em outros contextos (skill do Claude)

A pasta [`skill/`](skill/) traz a skill **`estudo-comparativo-acoes-governo`**, que transforma o método deste estudo num roteiro reutilizável. Com ela, o Claude conduz um novo estudo comparativo (outro tema, outros candidatos, outra esfera de governo ou outro país) com os mesmos passos: protocolo PICOC, coleta simétrica, verificação e relatórios.

### Instalação
- **Claude (app ou claude.ai):** nas configurações, na seção de Skills, envie o arquivo [`skill/estudo-comparativo-acoes-governo.zip`](skill/estudo-comparativo-acoes-governo.zip).
- **Claude Code:** copie a pasta `skill/estudo-comparativo-acoes-governo/` para `~/.claude/skills/` (uso pessoal) ou para `.claude/skills/` dentro de um projeto (uso compartilhado).

### Uso
Descreva o estudo em linguagem natural. A skill é acionada sozinha, ou pode ser chamada pelo nome. Exemplos:
- "Quero comparar as ações efetivas dos candidatos X e Y em **saúde**, seguindo um protocolo científico."
- "Use a skill estudo-comparativo-acoes-governo para comparar os dois últimos governos do meu **estado** em **segurança pública**."
- "Replique o estudo de educação para os candidatos ao governo de <UF> em 2026."

### O que a skill faz
1. **Protocolo:** define com você o PICOC, as questões de pesquisa, o *proxy* (quando um candidato nunca governou), os níveis de evidência e os controles de viés. O protocolo é congelado antes da coleta.
2. **Pasta do estudo:** cria a mesma estrutura deste repositório (fontes, extrações em CSV de 16 colunas, log de desvios).
3. **Coleta:** usa agentes em paralelo, um por dimensão, com os mesmos procedimentos para todos os grupos. A skill lista as rotas de dados públicos brasileiros que funcionaram aqui (Planalto, Senado, Câmara, TCU, Tesouro/SICONFI, SIOP, IBGE) e as que costumam falhar.
4. **Consolidação e verificação:** consolida e deflaciona os dados, sorteia uma amostra para verificação independente e faz revisões de simetria.
5. **Relatórios:** produz um relatório técnico e outro para o público geral, com gráficos, grau de confiança e o aviso de validação.
6. **Replicabilidade:** entrega `baixar_fontes.sh` com manifesto SHA-256 e prepara a publicação.

### O que adaptar para outro contexto
- **Dimensões.** Ajuste ao tema. Em saúde, por exemplo: financiamento, normas, programas, gestão, profissionais e resultados como mortalidade ou cobertura vacinal.
- **Fontes oficiais da esfera estudada.** Em estudos estaduais ou municipais: diários oficiais, portais de transparência, tribunais de contas e assembleias legislativas.
- **Deflator e período.** Mantenha períodos de duração parecida.
- **Regra de imprensa** (emenda v1.1 deste estudo). Adote ou não, conforme o rigor desejado.

> A skill herda o aviso deste estudo: ela automatiza coleta, verificação e redação para reduzir vieses humanos, mas não substitui a validação humana. Estudos feitos com ela devem informar isso e publicar os dados para auditoria.

## Limitações principais
- **Captura das fontes:** as páginas foram lidas por uma ferramenta que processa o conteúdo; daí a necessidade de conferir os originais.
- **Portais inacessíveis à coleta:** MEC, DOU, Portal da Transparência e arquivos do Inep. Ficaram lacunas nos dois grupos, listadas nos resumos de cada coletor.
- **Posicionalidade:** o pesquisador é docente de universidade federal e parte interessada no tema, o que é declarado como ameaça à validade.
