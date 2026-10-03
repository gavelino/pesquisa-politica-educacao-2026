# Relatório preliminar: ações efetivas em Educação (Lula 3 × governo Bolsonaro)

**Protocolo:** PICOC v1.0 (02/10/2026) · **Coleta:** 02/10/2026 · **Corte:** 30/09/2026
**Status:** PRELIMINAR. Todos os dados vêm de fontes oficiais, lidas por ferramenta que processa o conteúdo. Os arquivos originais ainda não foram baixados (ver §1). Nenhum número deve ser citado antes da conferência com os originais.

> Convenções: **Grupo A** = governo Lula 3 (2023–set/2026). **Grupo B** = governo Jair Bolsonaro (2019–2022), proxy do grupo político de Flávio Bolsonaro. Os IDs entre colchetes (ex.: [FIN-A061]) remetem a `analise/matriz_consolidada.csv` e aos arquivos em `fontes/`. Valores reais estão em R$ de dez/2025 (IPCA).

---

## 1. Execução do protocolo e desvios

| Item | Situação |
|---|---|
| Fontes registradas | 246 arquivos de fonte (211 nível A, 31 B, 1 C, 3 D) + 609 URLs únicas para download |
| Ações/registros extraídos | 415 (A: 186 · B: 161 · Flávio: 54 · linha de base 2017–18: 14) |
| Verificação independente | Amostra estratificada de 42 registros (12%): **90,5% confirmados**, 2 divergências, 1 caracterização imprecisa, 1 não verificável. Todas corrigidas (ver `verificacao/`) |
| Revisão de simetria | Feita em duas frentes: bloqueios orçamentários (FIN2) e orientações de voto (FLA) |

**Desvios do protocolo** (detalhes em `LOG_DESVIOS.md`):
1. **Rede bloqueada.** A política de rede da organização bloqueou buscadores e downloads diretos. A coleta usou só leitura web, que entrega o conteúdo *processado*, não o arquivo original. Para recuperar a replicabilidade, o script `baixar_fontes.sh` baixa os originais com hash SHA-256 e deve ser rodado no Mac, fora do Claude.
2. **Fontes inacessíveis à ferramenta:** gov.br/MEC (CAPTCHA), DOU, Portal da Transparência, SIOP, download.inep.gov.br e GEOCAPES. Isso produziu lacunas nos **dois** grupos.
3. **Recorte orçamentário.** A série usa a *função 12 – Educação* da União (SICONFI/Tesouro), não o órgão MEC (26000).
4. **Grupo extra em D6.** Os anos 2017–2018 entraram com grupo "linha_base", categoria que o protocolo não previa.

---

## 2. QP6: camada Flávio Bolsonaro (validação do proxy)

**Achados principais** [FLA-*]:
- **Senado (2019–):** nunca integrou a Comissão de Educação. Nenhuma relatoria de educação foi encontrada; a lista de relatorias veio truncada.
- **ALERJ (2003–2018):** nenhum registro de comissão de educação. A busca de proposições está incompleta.
- **Autoria:**
  - PL 2.170/2019: Educação Moral e Cívica, OSPB, empreendedorismo e educação financeira como temas transversais. Em tramitação.
  - Emenda 2 (CCJ) e substitutivo de cotas só por renda (Emendas 8–10) ao PL 5.384/2020. Todas rejeitadas.
  - Coautoria da PEC 173/2019 (salário-educação fora do teto) e da PEC 23/2025.
  - Nenhuma dessas proposições virou norma.
- **Votos nominais 2019–2022:** 22 registros em matérias de educação.
  - Sim ao Novo Fundeb (PEC 26/2020).
  - **Único voto "Não"** (71×1) ao PLP 135/2020, que proibia contingenciar o FNDCT. O Governo havia orientado "sim".
  - Votou pela derrubada do veto total do próprio governo à Lei de conectividade nas escolas (VET 10/2021), em acordo de lideranças.

**Índice de alinhamento à orientação do governo Bolsonaro (2019–2022)**, contando só votos com orientação documentada no Diário do Senado:

| Cenário | Resultado |
|---|---|
| **Principal** | **11/13 = 84,6%** |
| Sem PEC 23/2021 (matéria fiscal) | 8/10 = 80,0% |
| Sem PL 4.725/2020 (educação prisional) | 11/12 = 91,7% |
| Sem as duas matérias | 8/9 = 88,9% |
| Só orientações ditas por Líder ou Vice-Líder | 7/8 = 87,5% |

As duas divergências foram o PLP 135/2020 (FNDCT) e o PL 4.725/2020.
**Contexto, sem comparação direta:** em 2023–2026, Flávio votou como o governo Lula em 4 de 7 votações com orientação registrada (57,1%).

**Leitura metodológica:** o proxy fica **sustentado com ressalvas**. As 13 orientações documentadas eram todas "sim", em matérias quase consensuais. O índice mede, portanto, quando Flávio deixou de acompanhar o governo, e não a adesão a pautas controversas. A divergência no FNDCT (C&T) é a mais relevante para o tema. As emendas parlamentares de Flávio para educação **não foram levantadas** (Portal da Transparência inacessível).

---

## 3. QP1: Financiamento (D1)

### 3.1 Séries em valores reais (R$ bilhões de dez/2025; médias anuais)

| Série | B (2019–22) | A (2023–25) | Variação | IDs |
|---|---|---|---|---|
| Função 12 Educação: empenhado | 131,3 | 162,4 | +23,7% | FIN-A025…A037 |
| Função 12 Educação: pago no exercício | 109,8 | 136,4 | +24,2% | FIN-A026…A038 |
| Complementação da União ao Fundeb (caixa) | 26,5 | 50,1 | +89,1% | FIN-A061…A067 |
| Discricionárias da função Educação (caixa)¹ | 24,2 | 33,6 | +38,8% | FIN-A069…A074 |
| Ensino Superior (subfunção 364): pago | 37,1 | 37,8 | +1,7% | FIN-A040…A052 |
| Educação Profissional (subfunção 363): pago | 13,9 | 14,8 | +6,6% | FIN-A041…A053 |
| CAPES: dotação final | 4,68 | 5,62 | +20,1% | FIN-A098…A104 |

¹ Média do grupo B calculada com 2020–2022, porque o valor de 2019 não foi obtido.
Série ano a ano em `analise/financiamento_valores_reais.csv`. O ano de 2026 ficou fora das médias (execução parcial).

### 3.2 Trajetórias dentro de cada período (valores reais)
- **Ensino Superior:**
  - B: caiu de 41,6 bi (2019) para 34,3 bi (2022).
  - A: 36,5 bi (2023), 36,2 bi (2024) e 40,5 bi (2025).
- **CAPES:**
  - B: caiu de 5,83 bi (2019) para 4,08 bi (2022).
  - A: 5,91 bi (2023), 5,22 bi (2024) e 5,73 bi (2025). A LOA de 2026 prevê 4,96 bi nominais.
- **Discricionárias:**
  - B: estáveis, entre 23 e 26 bi.
  - A: 38,2 bi (2023), 29,8 bi (2024) e 32,7 bi (2025).
  - O Tesouro atribui 6,1 bi de 2023 e 9,5 bi de 2026 (nominais) ao fundo do Pé-de-Meia.

### 3.3 Limites e bloqueios do MEC (decretos de programação; R$ bi nominais) [FIN2-*]

| Ano | Grupo | Limite inicial | Limite final | Maior redução no ano |
|---|---|---|---|---|
| 2019 | B | não lido | 25,83 | Contingenciamento de mar/2019 (limite caiu para 17,79 bi; recomposto ao longo do ano) |
| 2020 | B | 24,48 (MEC+FNDE) | 24,48 | nenhuma identificada |
| 2021 | B | 20,84 | 20,34 | Bloqueio de 2,73 bi na sanção da LOA (D10.686); −0,35 bi (D10.760) |
| 2022 | B | 24,45 | 21,86 | −1,62 bi (D11.154). Dez/2022: sem acréscimo no limite de pagamento |
| 2023 | A | 30,11 | 30,20 | −0,06 bi (D11.538, emendas) |
| 2024 | A | 34,53 | 31,75 | −1,67 bi (D12.279) |
| 2025 | A | 33,86 | 34,46 | −0,67 bi (D12.477, RP7) |
| 2026* | A | 42,28 | em curso | −3,25 bi (D12.990); contenção de 1,32 bi em jul–set |

\* Até 30/09/2026.
**Lacuna simétrica:** os valores do MEC nos anexos de bloqueio de 2023–2025 não foram lidos.

### 3.4 Atos e fatos (sem valor monetário)
- **FNDCT:**
  - B: a LC 177/2021 foi sancionada com veto à vedação do contingenciamento; o veto foi derrubado pelo Congresso. Depois veio a MP 1.136/2022, que limitava a aplicação do fundo; perdeu eficácia em 15/02/2023.
  - Execução anual do fundo: **não obtida** para nenhum dos dois grupos.
- **Bolsas:**
  - CNPq: os valores de IC, mestrado e doutorado não tiveram reajuste de 2013 a 2022. Em 2023, com recursos da PEC da Transição, foram para 700 / 2.100 / 3.100 [FIN-A109, FIN-A110].
  - CAPES: o ato de reajuste de 2023 **não foi localizado**.
- **PNAE (per capita do ensino fundamental e médio):**
  - B: R$ 0,36, mantido de 2019 a 2022.
  - A: R$ 0,50 em 2023 e R$ 0,57 em 2026.

### 3.5 Ressalvas essenciais
- **(a) Fundeb:** a alta da complementação da União segue o **cronograma constitucional da EC 108/2020** (10% → 23% até 2026). A emenda foi promulgada pelo Congresso em 2020, com orientação "sim" do governo B, e vale para ambos os períodos. O crescimento não é decisão discricionária de nenhum dos dois governos.
- **(b) Regras fiscais:** o grupo B operou sob o Teto de Gastos (EC 95) e a pandemia. O grupo A operou com a PEC da Transição e o Regime Fiscal Sustentável (LC 200/2023).
- **(c) Escopo da série:** a função 12 não inclui a complementação do Fundeb (função 28) e não equivale ao orçamento do órgão MEC.
- **(d) Deflator:** o índice de dezembro é uma convenção. A média anual do índice daria valores um pouco diferentes.

---

## 4. QP2: Marco normativo (D2)

| | Grupo B (2019–2022) | Grupo A (2023–set/2026) |
|---|---|---|
| **Decretos de política** | PNA – alfabetização (D9.765); Pecim – escolas cívico-militares (D10.004); educação especial (D10.502); regulamentação do Fundeb (D10.656) | Revogação dos três decretos ao lado; Compromisso Criança Alfabetizada (D11.556); EaD na graduação (D12.456); educação especial inclusiva (D12.686) |
| **Leis de iniciativa do Executivo** | Novas regras do ProUni (Lei 14.350) e transação do Fies (Lei 14.375), ambas convertidas de MP | Escola em Tempo Integral (14.640); reforma do ensino médio (14.945); novo PNE (15.388); Lei 15.367/2026; piso – nova fórmula (MP 1.334 → Lei 15.437) |
| **Leis sancionadas sem veto (exemplos; autoria nem sempre verificada)** | Fundeb (14.113); educação bilíngue de surdos (14.191) | Cotas (14.723); prorrogação do PNE (14.934); celulares nas escolas (15.100) |
| **Vetos derrubados pelo Congresso** | 7: psicólogos e assistentes sociais nas escolas (13.935, veto total); internet para alunos e professores (14.172, veto total, R$ 3,5 bi); Educação Conectada (14.180); dignidade menstrual (14.214); Fundeb (14.276); FNDCT (LC 177, parcial); pedagogia da alternância | 3 derrubados (14.695, 14.734, 14.874) e 2 derrubados parcialmente (14.533, 14.818) |
| **Reitores** | MP 914/2019 caducou; MP 979/2020 (reitores pro tempore) foi devolvida pelo Senado | Lei 15.367/2026 revoga o art. 16 da Lei 5.540/68 (lista tríplice). Nos IFs, obriga nomear o mais votado. A regra para universidades **ainda não foi verificada** |
| **Iniciativas do Executivo não aprovadas** | Educação domiciliar (PL 2.401/2019); Future-se (PL 3.076/2020). Registradas, mas excluídas da análise | Levantamento equivalente **não feito** (lacuna de simetria) |
| **Vetos totais pendentes** | — | Universidades tecnológicas a partir dos CEFET-MG e CEFET-RJ; Unifron |

**Nota:** a contagem de atos não é comparável sem ajuste. Os períodos têm 48 e 45 meses, e o peso da iniciativa do Congresso varia entre legislaturas.

---

## 5. QP3: Programas (D3)

**Grupo B:**
- **Pecim:** criado em 2019. Número de escolas e valores não obtidos.
- **PNA e Tempo de Aprender:** existência confirmada só por relato da Casa Civil ao TCU. Os atos de criação não foram verificados.
- **Educação Conectada:** R$ 224 mi (fibra) e R$ 60 mi (satélite) em 2019; R$ 104 mi em 2020. O TCU apontou atrasos e execução fragmentada.
- **Ensino na pandemia:** o TCU (Ac. 2620/2021) classificou as ações do MEC como "fragmentadas, intempestivas e sem foco específico".
- **Fies:** 50.876 novos contratos em 2022, contra 732.593 em 2014.
- **Novo Ensino Médio:** o TCU registrou atrasos no cronograma de implementação.

**Grupo A:**
- **Compromisso Criança Alfabetizada:** dotação de R$ 1,9 bi (2023–2025). O indicador de alfabetização passou de 56% para 66%. O TCU apontou ausência de gestão de riscos.
- **Pé-de-Meia:** R$ 12,5 bi e cerca de 4 milhões de beneficiários em 2024. O TCU emitiu cautelar contra a execução fora do orçamento, depois regularizada pela Lei 15.265/2025. O TCU também encontrou 12.877 beneficiários acima do critério de renda.
- **Escolas Conectadas:** R$ 9,6 bi. O TCU apontou ausência de plano formal.
- **Retomada de obras:** 521 de 3.783 obras deferidas até ago/2024. O TCU apontou uso de recursos fora da finalidade.
- **Sem dados de execução:** Escola em Tempo Integral, Mais Professores e Desenrola Fies.

**Ressalva:** os programas do grupo A têm mais auditorias recentes do TCU, porque estão em fiscalização ativa. O grupo B tem mais auditorias *ex post* da pandemia. Isso reflete o calendário de fiscalização, não o volume de ações.

---

## 6. QP4: Gestão e governança (D4)

| Indicador | Grupo B | Grupo A |
|---|---|---|
| Ministros da Educação | 4 titulares e 1 nomeação revogada (só fonte D, *não confirmado*) | 2 titulares (Camilo Santana → Leonardo Barchini, abr/2026, fonte A) |
| Trocas na presidência do Inep | 5 | 1 |
| Trocas na presidência do FNDE | 4 | 1 (confirmado até set/2023) |
| Trocas na presidência do CNPq | 2 | 2 (confirmação parcial) |
| Enem | 37 servidores do Inep pediram exoneração antes do Enem 2021 (registro do TCU, sem sanção) | TCU acompanha o contrato de aplicação |
| TCU: decisões mais relevantes | PAR/FNDE 2020–22: transferências sem critérios documentados (procedente; no apartado, procedência parcial, sem dano e sem multa). Pregão de ônibus escolares: improcedente | Pé-de-Meia: cautelar com bloqueio de R$ 6 bi, recursos fora do orçamento (ciência, sem multa) e beneficiários irregulares (determinações) |
| Reitores fora do 1º colocado | não quantificado | não quantificado |

---

## 7. QP5: Valorização docente (D5)

| | Grupo B | Grupo A |
|---|---|---|
| Docentes federais: reajuste geral | Nenhum ato de 2019–2022 localizado. Em 2019 vigorou a última parcela da Lei 13.325/2016, do governo anterior | 9% linear em mai/2023 (Lei 14.673). Reestruturação da carreira a partir de 2025 (Lei 15.141). Criação de 3.800 cargos de Magistério Superior e 9.587 de EBTT (Lei 15.367/2026; cargos criados, não providos) |
| Piso do magistério | Valores e portarias 2019–2022 não confirmados (lacuna) | Nova fórmula legal (Lei 15.437/2026). Piso de R$ 4.867,77 (2025) e R$ 5.130,63 (2026, +5,40%) |

---

## 8. QP7: Indicadores de resultado (D6, secundário, sem atribuição causal)

| Indicador | 2017–18 | 2019 | 2021 | 2022 | 2023 | 2025 |
|---|---|---|---|---|---|---|
| Ideb anos iniciais / finais / ensino médio | 5,8/4,7/3,8 (nc) | nc | nc | — | 6,0/5,0/4,3 | 6,3/5,3/4,5 |
| PISA Matemática / Leitura / Ciências | 2018: lacuna | — | — | 379/410/403 (derivado) | — | 377/408/409 (variação não significativa) |
| Criança Alfabetizada | — | — | — | — | 56% | 66% (2024: 59%) |
| Analfabetismo 15+ (IBGE) | 6,5 / 6,3 | 6,1 | sem dado | 5,6 | 5,4 | 4,9 |

*nc = não confirmado em fonte primária.*

**Atenção:**
- Indicadores educacionais têm defasagem de vários anos. O Ideb e o Saeb de 2023 refletem trajetórias escolares em grande parte de 2019–2022.
- 2021 foi afetado pela pandemia (aprovação flexibilizada).
- O indicador Criança Alfabetizada só existe desde 2023.
- Lacunas importantes: séries do Ideb e Saeb de 2017–2021, Censos Escolar e Superior 2018–2024, bolsas e titulados da CAPES.

---

## 9. Síntese por dimensão (descritiva, sem índice composto)

- **D1 Financiamento:**
  - Em valores reais, o grupo A tem médias anuais maiores na função Educação (+24%), nas discricionárias (+39%), na CAPES (+20%) e na complementação do Fundeb (+89%).
  - A alta da complementação do Fundeb segue regra constitucional de 2020 com efeito nos dois períodos.
  - Ensino superior e EPT ficam praticamente estáveis na média. Dentro de cada período, porém, as trajetórias são opostas: queda em B, recuperação em A.
  - Bloqueios relevantes aparecem nos dois grupos: 2019, 2021 e 2022 em B; 2024 e 2026 em A.
- **D2 Normativo:**
  - B criou políticas por decreto (PNA, Pecim, educação especial), revogadas por A.
  - B teve 7 vetos derrubados em educação. A teve 3 derrubados e 2 derrubados parcialmente, e há vetos pendentes.
  - A aprovou leis estruturais de iniciativa própria: ensino médio, PNE, Tempo Integral, piso e carreira.
- **D3 Programas:**
  - Os dois grupos têm programas com achados críticos do TCU: em B, a coordenação na pandemia e a Educação Conectada; em A, o Pé-de-Meia, as Escolas Conectadas e a retomada de obras.
  - A execução de vários programas de ambos não foi obtida.
- **D4 Gestão:**
  - Rotatividade maior em B no MEC, no Inep e no FNDE. Os dados de ministros de B dependem de fonte D.
  - Achados do TCU sobre critérios de transferência (B) e sobre o arranjo orçamentário e a focalização do Pé-de-Meia (A).
- **D5 Docentes:**
  - B: nenhum ato de reajuste geral localizado.
  - A: reajuste em 2023 e reestruturação da carreira em 2025.
  - Os valores do piso em 2019–2024 estão em aberto.
- **D6 Resultados:** melhora recente do Ideb e da alfabetização, e PISA estável, sem atribuição causal.
- **QP6:** Flávio acompanhou o governo Bolsonaro em cerca de 85% das votações de educação com orientação documentada, todas de orientação "sim". Divergiu no FNDCT.

---

## 10. Próximos passos
1. **Rodar `baixar_fontes.sh`** no Terminal do Mac para baixar os originais e gerar o manifesto SHA-256. Baixar manualmente as fontes que falharem (CAPTCHA, DOU).
2. **Conferência do pesquisador:** pelo menos 20% das extrações contra os originais, conforme §9.7 do protocolo. Começar pelos números das tabelas §3.1, §3.3 e §8.
3. **Lacunas prioritárias, buscar com o mesmo procedimento nos dois grupos:**
   - série do órgão MEC (26000), universidades e IFs;
   - execução do FNDCT;
   - valores dos anexos de bloqueio de 2023–2025;
   - emendas de Flávio para educação (CSV do Portal da Transparência);
   - proposições de Flávio na ALERJ;
   - piso de 2019–2024;
   - Ideb e Saeb de 2017–2021;
   - Censos;
   - iniciativas do Executivo não aprovadas no grupo A;
   - regra de nomeação de reitores das universidades na Lei 15.367/2026.
4. **Registro de posicionalidade e conflito de interesse** do pesquisador no relatório final (protocolo §9.8).
