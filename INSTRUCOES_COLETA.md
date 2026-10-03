# Instruções comuns de coleta (para todos os agentes)

## Contexto
Pesquisa acadêmica com protocolo PICOC (v1.0, congelado em 02/10/2026) comparando AÇÕES EFETIVAS em EDUCAÇÃO:
- Grupo A: Governo Lula 3 (01/01/2023 até data de corte 30/09/2026)
- Grupo B: Governo Jair Bolsonaro (01/01/2019–31/12/2022), proxy do grupo político de Flávio Bolsonaro
- Camada separada: atuação parlamentar de Flávio Bolsonaro (ALERJ 2003–2018; Senado 2019–)
Escopo: nível federal; educação básica, ensino superior federal (universidades e IFs), pós-graduação (CAPES), C&T ligada à pesquisa (CNPq, FNDCT/MCTI).

## Neutralidade (OBRIGATÓRIO)
- Aplique EXATAMENTE os mesmos procedimentos, buscas e indicadores aos dois grupos. Para toda busca feita para um grupo, faça a equivalente para o outro.
- Registre achados favoráveis E desfavoráveis aos dois lados. Não adjetive, não conclua quem é "melhor". Apenas fatos verificáveis.
- Quando uma medida for iniciativa do Congresso, registre a POSIÇÃO DO EXECUTIVO (sancionou, vetou, orientou voto, editou MP etc.), não atribua a lei inteira ao governo.
- Ações que cruzam mandatos (criada num governo, encerrada no outro): registre nos dois lados, cada um com seu ato.

## Critérios
INCLUIR: ação concreta com registro verificável: ato normativo publicado (lei, MP, decreto, portaria), execução orçamentária, programa implementado com dados, voto nominal registrado, auditoria TCU/CGU.
EXCLUIR: propostas de campanha, promessas, discursos, entrevistas, redes sociais, opinião, PLs não aprovados (exceto camada Flávio, como "atividade"), anúncios sem execução, mídia partidária.

## Hierarquia de evidência
A = dado oficial primário / ato publicado (planalto.gov.br, in.gov.br/DOU, gov.br/mec, gov.br/inep, fnde.gov.br, portaldatransparencia.gov.br, tesourotransparente.gov.br, siop, camara.leg.br, senado.leg.br, alerj.rj.gov.br, capes.gov.br, cnpq.br, ibge.gov.br)
B = auditoria de órgão de controle (tcu.gov.br, cgu.gov.br), estudos de consultorias legislativas, IPEA, artigos revisados por pares (scielo etc.)
C = relatórios de entidades/think tanks (Todos Pela Educação, Observatório do PNE, Andifes, SBPC, INESC, Fineduca) — registrar posição institucional
D = imprensa de referência e agências de checagem — usar SOMENTE para localizar a fonte primária
Toda ação incluída precisa de pelo menos uma evidência A ou B. Achados só com C/D vão marcados "nao_confirmado".

## Ferramentas e REDE
- A rede direta (curl, wget, python requests) está BLOQUEADA por política da organização. NÃO tente usar.
- Use apenas WebSearch e WebFetch.
- No WebFetch, peça sempre: "Transcreva LITERALMENTE (sem resumir) os trechos relevantes sobre <tema>, incluindo números, datas, número do ato e tabelas; informe título do documento, órgão emissor e data de publicação." Valores numéricos devem ser copiados exatamente.
- Se um site oficial falhar, tente URL alternativa do mesmo órgão; imprensa só para descobrir a URL primária.

## Formato de saída (salvar arquivos com a ferramenta Write)
Pasta base: /home/claude/pesquisa_politica

1) Um arquivo por fonte em `fontes/<ID>.md`, onde ID = <PREFIXO>-<nnn> (ex.: FIN-001). Conteúdo:
```
---
id: FIN-001
titulo: <título do documento>
orgao: <órgão emissor>
url: <URL exata acessada>
data_publicacao: <AAAA-MM-DD ou desconhecida>
data_acesso: 2026-10-02
nivel_evidencia: A|B|C|D
grupo: A (Lula 3) | B (Bolsonaro) | Flavio | ambos | contexto
dimensao: D1..D6 | QP6
metodo_captura: WebFetch (conteúdo processado; original a baixar via baixar_fontes.sh)
---
## Trechos extraídos (literais)
<transcrição literal dos trechos relevantes>

## Notas do coletor
<observações, limitações, ambiguidades>
```

2) Um arquivo de extrações `extracoes/<PREFIXO>.csv` (UTF-8, separador ponto-e-vírgula, aspas duplas quando necessário) com cabeçalho EXATO:
`id_acao;grupo;dimensao;titulo;data;instrumento;origem;tipo;status;valor_nominal;unidade_valor;ano_valor;fontes_primarias;nivel_evidencia;fontes_corroboracao;observacoes`
- grupo: A | B | Flavio
- origem: Executivo | Legislativo_com_sancao | Legislativo_veto_derrubado | Judiciario | Parlamentar
- tipo: expansao | manutencao | corte_descontinuacao | reforma | reversao | atividade_parlamentar | voto | indicador
- status: implementada | parcial | revertida | nao_executada | nao_confirmado
- fontes_primarias: IDs das fontes (ex.: FIN-001|FIN-004)

3) Um arquivo `fontes/urls_<PREFIXO>.tsv` com linhas `<ID>\t<URL>\t<tipo esperado: pdf|html|csv|xlsx>` — usado depois para baixar os originais. Inclua também URLs de arquivos de dados brutos (CSV/XLSX/PDF) que você identificou mas não pôde ler.

4) Um arquivo `extracoes/<PREFIXO>_resumo.md` com: o que foi buscado (strings e sites), o que foi encontrado por grupo, lacunas (o que não foi encontrado ou não pôde ser verificado), e ressalvas metodológicas. Seja simétrico.

Seja exaustivo dentro do escopo, mas prefira poucas fontes de nível A bem verificadas a muitas fontes fracas. Mire em 15–35 fontes.
