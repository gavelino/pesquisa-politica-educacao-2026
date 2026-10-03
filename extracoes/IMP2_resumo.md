# IMP2: exemplos de imprensa para D2 (Normas) e D3 (Programas), protocolo v1.1

Coleta feita em 03/10/2026 com WebFetch. São 70 fontes de nível D (IMP2-001 a IMP2-070) e 38 linhas em `extracoes/IMP2.csv`: 19 do grupo B e 19 do grupo A. As URLs estão em `fontes/urls_IMP2.tsv`, com 8 URLs adicionais não lidas ou lidas só pelo título (IMP2-NL01 a NL08).

**Regras aplicadas (emenda v1.1, §13).**
- Toda frase traz link.
- Números e fatos contestados exigem pelo menos 2 veículos independentes. Com 1 veículo, o item fica `nao_confirmado`.
- Toda contagem ou valor que é declaração do governo leva a marca **[declaração oficial]**.
- A imprensa não substitui A/B para contagens. A coluna `fontes_corroboracao` do CSV aponta a linha A/B correspondente quando ela existe.

---

## D2 – Normas

### Grupo B (Bolsonaro, 2019–2022)

**Pecim (Decreto 10.004/2019) e escolas aderidas**
- Em jul/2019 o MEC anunciou a meta de 108 escolas cívico-militares até 2023, com R$ 40 milhões por ano **[declaração oficial]** ([Agência Brasil, 11/07/2019](https://agenciabrasil.ebc.com.br/educacao/noticia/2019-07/mec-pretende-implantar-no-pa%C3%ADs-108-escolas-c%C3%ADvico-militares-ate-2023)).
- Em fev/2020 o MEC divulgou 54 escolas em 22 estados e no DF para 2020, com R$ 1 milhão por escola **[declaração oficial]** ([Agência Brasil, 26/02/2020](https://agenciabrasil.ebc.com.br/educacao/noticia/2020-02/weintraub-divulga-escolas-civico-militares-para-2020)). O Poder360 publicou matéria com o mesmo número no título (título lido, texto não).
- Portaria de dez/2020 previu mais 54 escolas em 2021, duas por UF **[declaração oficial]** ([Agência Brasil, 28/12/2020](https://agenciabrasil.ebc.com.br/educacao/noticia/2020-12/governo-preve-adesao-de-54-escolas-ao-modelo-civico-militar-em-2021)).
- Em nov/2021 o governo informou 127 escolas no modelo em 26 estados e previu 216 até o fim de 2022 **[declaração oficial]** ([Agência Brasil, 24/11/2021](https://agenciabrasil.ebc.com.br/politica/noticia/2021-11/governo-preve-implantacao-de-216-escolas-civico-militares-ate-2022)).
- Em mai/2022 o balanço do MEC registrou 216 escolas implantadas em todos os estados **[declaração oficial]** ([Agência Brasil, 02/05/2022](https://agenciabrasil.ebc.com.br/educacao/noticia/2022-05/mec-lanca-relatorio-com-52-acoes-na-educacao-basica)).
- *Divergência:* em jul/2023 os veículos citam 200 escolas com 120 mil alunos (dado do MEC segundo o [Poder360](https://www.poder360.com.br/educacao/escolas-civico-militares-vao-continuar-em-ao-menos-19-ufs/)), 202 escolas ([Poder360](https://www.poder360.com.br/educacao/governo-oficializa-fim-do-programa-de-escolas-civico-militares/)) e 216 escolas ([Agência Brasil](https://agenciabrasil.ebc.com.br/educacao/noticia/2023-07/publicado-decreto-que-revoga-programa-escolas-civico-militares)). O total final fica `nao_confirmado` em D.

**Política de Educação Especial (Decreto 10.502/2020)**
- O decreto, que incentivava a criação de escolas e classes especializadas, foi suspenso em 01/12/2020 por liminar do ministro Dias Toffoli (STF) em ação do PSB ([Agência Senado, 02/12/2020](https://www12.senado.leg.br/noticias/materias/2020/12/02/senadores-elogiam-liminar-que-suspende-decreto-sobre-educacao-especial)).
- O plenário manteve a suspensão. A data não aparece na matéria ([Poder360, 30/08/2021](https://www.poder360.com.br/educacao/mec-defende-educacao-especial-para-criancas-com-deficiencia/)).

**Internet para alunos e professores (Lei 14.172/2021)**
- O Executivo vetou integralmente o PL 3.477/2020 (R$ 3,5 bilhões para internet de alunos e professores da rede pública). Alegou falta de estimativa de impacto orçamentário ([Agência Senado, 19/03/2021](https://www12.senado.leg.br/noticias/materias/2021/03/19/vetado-projeto-que-dava-acesso-a-internet-a-alunos-e-professores-da-rede-publica)).
- O Congresso derrubou o veto em 01/06/2021 ([Agência Senado, 01/06/2021](https://www12.senado.leg.br/noticias/materias/2021/06/01/congresso-derruba-veto-e-confirma-r-3-5-bi-para-internet-de-alunos-e-professores-da-rede-publica)).
- Os R$ 3,5 bilhões foram liberados pela MP 1.088/2021 em 29/12/2021 ([Agência Senado, 03/01/2022](https://www12.senado.leg.br/noticias/audios/2022/01/liberados-mais-de-r-3-5-bi-para-internet-de-professores-e-alunos-de-escolas-publicas)).
- Só 1 agência foi lida. O fato também está em fonte A (NOR-B08).

**Novo Fundeb (EC 108/2020 e Lei 14.113/2020)**
- *Nível de confirmação:* `nao_confirmado`, porque só o Poder360 foi lido (2 matérias). Em jul/2020 o Planalto apresentou contraproposta: manter o fundo em 2021, aumentar a partir de 2022 e reservar 5 pontos percentuais para transferência de renda a famílias ([Poder360, 19/07/2020](https://www.poder360.com.br/governo/governo-quer-manter-fundeb-em-2021-igual-ao-de-2020-e-aumentar-so-em-2022/); [Poder360, 21/07/2020](https://www.poder360.com.br/brasil/camara-aprova-pec-que-aumenta-verbas-da-uniao-para-a-educacao-basica/)).
- A Câmara aprovou a PEC por 499 a 7 em 21/07/2020. O presidente declarou que o resultado era "vitória do governo" em "comum acordo" ([Poder360, 22/07/2020](https://www.poder360.com.br/governo/fundeb-e-vitoria-do-governo-em-comum-acordo-com-congresso-diz-bolsonaro/)).
- O Senado aprovou por 79 a 0 em 25/08/2020, com apoio declarado do líder do governo. A complementação da União sobe de 10% para 23% até 2026 ([Agência Senado, 25/08/2020](https://www12.senado.leg.br/noticias/materias/2020/08/25/pec-do-fundeb-permanente-e-aprovada-no-senado-por-unanimidade)).
- Em 28/09/2020 o governo anunciou a proposta de usar até 5% do novo Fundeb no Renda Cidadã. A proposta não foi aprovada; só 1 veículo foi lido ([Agência Senado, 29/09/2020](https://www12.senado.leg.br/noticias/materias/2020/09/29/senadores-criticam-proposta-de-tirar-dinheiro-do-fundeb-para-o-renda-cidada)).
- A Lei 14.113/2020 foi sancionada sem vetos em 25/12/2020 ([Agência Senado](https://www12.senado.leg.br/noticias/materias/2020/12/28/senadores-celebram-novo-fundeb-sancionado-sem-vetos); [Poder360](https://www.poder360.com.br/governo/bolsonaro-sanciona-sem-vetos-a-lei-que-regulamenta-o-fundeb/)).

**MPs sobre reitores**
- A MP 914/2019 (lista tríplice com pesos 70/15/15 e escolha livre entre os três) perdeu a eficácia em 02/06/2020 sem que a comissão mista fosse instalada ([Agência Senado, 02/06/2020](https://www12.senado.leg.br/noticias/materias/2020/06/02/perde-eficacia-mp-que-mudava-eleicao-de-reitores-de-universidades-federais)).
- A MP 979/2020 previa a designação de reitores pro tempore pelo ministro, sem consulta e sem lista tríplice, durante a pandemia ([Poder360, 10/06/2020](https://www.poder360.com.br/governo/mp-de-bolsonaro-da-a-weintraub-poder-para-escolher-reitores-universitarios/)). Foi devolvida pelo presidente do Congresso, que a considerou inconstitucional ([Agência Senado, 15/06/2020](https://www12.senado.leg.br/noticias/audios/2020/06/davi-alcolumbre-devolve-mp-que-permitia-ao-governo-indicar-reitores-sem-eleicao)).

**Contexto: propostas não aprovadas**
- *Future-se:* o MEC lançou o programa em 17/07/2019, com fundo inicial de R$ 50 bilhões em imóveis da União e acesso anunciado a R$ 102,6 bilhões **[declaração oficial]** ([Poder360](https://www.poder360.com.br/governo/ministerio-da-educacao-tera-fundo-de-r-1026-bi-para-universidades-federais/)). O PL não foi aprovado.
- *Educação domiciliar:* a Câmara aprovou o PL 3.179/2012 por 264 a 144 em 19/05/2022 ([Poder360](https://www.poder360.com.br/congresso/camara-conclui-projeto-que-autoriza-a-educacao-domiciliar/)). O projeto não virou lei.

### Grupo A (Lula 3, 2023 – set/2026)

**Revogação do Pecim**
- O decreto que revoga o Pecim foi publicado em 21/07/2023. Previu plano de transição do MEC em 30 dias, e cada rede define a reintegração das escolas ([Agência Brasil](https://agenciabrasil.ebc.com.br/educacao/noticia/2023-07/publicado-decreto-que-revoga-programa-escolas-civico-militares); [Poder360](https://www.poder360.com.br/educacao/governo-oficializa-fim-do-programa-de-escolas-civico-militares/)).
- Em levantamento de 14/07/2023, ao menos 19 UFs declararam intenção de manter ou readequar o modelo. Só Alagoas confirmou o encerramento total. Só 1 veículo foi lido ([Poder360](https://www.poder360.com.br/educacao/escolas-civico-militares-vao-continuar-em-ao-menos-19-ufs/)).

**Revogação da PNEE**
- O Decreto 10.502/2020 foi revogado em 01/01/2023 ([Poder360](https://www.poder360.com.br/governo/saiba-quais-sao-os-11-decretos-e-3-mps-baixadas-por-lula-apos-posse/), que grafa "Decreto 370"; [Agência Senado](https://www12.senado.leg.br/noticias/materias/2023/01/04/201crevogaco201d-de-lula-atinge-decretos-que-ja-eram-alvo-do-senado)).

**Reforma do ensino médio (Lei 14.945/2024)**
- Veio do PL 5.230/2023, do Executivo, e foi sancionada em 31/07/2024 ([Agência Senado](https://www12.senado.leg.br/noticias/materias/2024/08/01/reforma-do-novo-ensino-medio-e-sancionada-com-veto-a-mudanca-no-enem)).
- A formação geral básica passa de 1.800 h para 2.400 h; no técnico, são 1.800 h, mais até 300 h.
- O Executivo vetou a inclusão dos itinerários no Enem a partir de 2027.

**Lei de Cotas (Lei 14.723/2023)**
- Sancionada em 13/11/2023, a partir de PL de deputada ([Agência Senado](https://www12.senado.leg.br/noticias/materias/2023/11/14/sancionada-ampliacao-da-lei-de-cotas)). Principais mudanças:
  - critério de renda passa a 1 salário mínimo per capita;
  - inclusão de quilombolas;
  - o candidato cotista concorre primeiro na ampla concorrência;
  - avaliação a cada 10 anos.
- No Sisu 2026 foram 128.078 vagas pela Lei de Cotas **[declaração oficial]** ([Poder360](https://www.poder360.com.br/poder-educacao/cotas-avancam-nas-vagas-para-enem-em-universidades-publicas/)). Só 1 veículo foi lido.

**Celulares (Lei 15.100/2025)**
- A lei restringe o uso de celulares nas escolas de educação básica. Veio do PL 4.932/2024 (dep. Alceu Moreira, MDB-RS), com apoio declarado do líder do governo, e foi sancionada em jan/2025 ([Agência Senado, 14/01/2025](https://www12.senado.leg.br/noticias/materias/2025/01/14/sancionada-lei-que-restringe-uso-de-celular-em-escolas-de-todo-o-pais)).

**Novo PNE (Lei 15.388/2026)**
- Veio do PL 2.614/2024 e foi sancionado sem vetos ([Agência Senado, 15/04/2026](https://www12.senado.leg.br/noticias/materias/2026/04/15/novo-plano-nacional-de-educacao-e-sancionado-e-entra-em-vigor); [Agência Senado, 16/07/2026](https://www12.senado.leg.br/noticias/materias/2026/07/16/educacao-senado-aprovou-novo-pne-piso-do-professor-e-expansao-do-ensino-federal)).
- Tem 19 objetivos e 73 metas. A meta de gasto é 7,5% do PIB no 7º ano e 10% ao final.
- A data da lei é 14/04 ou 15/04/2026; conferir em A.

**Fim da lista tríplice (Lei 15.367/2026)**
- Veio do PL 5.874/2025, do Executivo, e foi publicada em 31/03/2026 ([Agência Senado, 31/03/2026](https://www12.senado.leg.br/noticias/materias/2026/03/31/lei-reestrutura-carreiras-do-servico-publico-federal)).
- Retira a exigência de lista tríplice: a indicação passa a seguir o resultado da consulta.
- Cria 3.800 cargos de magistério superior e 9.587 de EBTT.
- Só 1 agência foi lida. O fato também está em A (GES-X28 e GES-X38).

**Novas universidades (2026, todas de PL do Executivo)**
- Universidade Federal Indígena: Lei 15.418, sancionada em 28/05/2026 e publicada em 29/05 ([Poder360](https://www.poder360.com.br/poder-governo/lula-sanciona-criacao-de-universidade-federal-indigena/); [Agência Senado](https://www12.senado.leg.br/noticias/materias/2026/05/29/universidade-federal-indigena-e-criada-com-sede-em-brasilia)).
- Universidade Federal do Esporte: Lei 15.457, de 03/07/2026 ([Agência Senado](https://www12.senado.leg.br/noticias/materias/2026/07/03/brasil-ganha-primeira-universidade-federal-dedicada-ao-esporte)).
- Universidade Federal da Fronteira Norte: Lei 15.520, de 25/09/2026, com sede em Oiapoque ([Agência Senado](https://www12.senado.leg.br/noticias/materias/2026/09/25/lei-cria-a-universidade-federal-da-fronteira-do-norte)). Antes, o Executivo vetou integralmente o PL parlamentar da Unifron por vício de iniciativa ([Agência Senado, 31/07/2026](https://www12.senado.leg.br/noticias/materias/2026/07/31/vetada-criacao-de-universidade-federal-no-norte-do-amapa)).
- Unidades de IFs: portaria de 26/09/2026 autoriza 19 novas unidades. O governo declara 92 unidades autorizadas no mandato **[declaração oficial]** ([Poder360](https://www.poder360.com.br/poder-educacao/lula-assina-portaria-que-autoriza-19-institutos-federais-em-12-estados/)). Só 1 veículo foi lido.

---

## D3 – Programas

### Grupo B (Bolsonaro, 2019–2022)

**Tempo de Aprender / PNA**
- Lançado em 18/02/2020, com orçamento anunciado de mais de R$ 220 milhões **[declaração oficial]** ([Agência Brasil](https://agenciabrasil.ebc.com.br/educacao/noticia/2020-02/mec-lanca-programa-para-aprimorar-alfabetizacao)).
- Em nov/2020, o secretário de Alfabetização informou a adesão de mais de 4.400 redes e 270 mil cursistas **[declaração oficial]** ([Agência Senado](https://www12.senado.leg.br/noticias/materias/2020/11/13/dia-nacional-da-alfabetizacao-senadores-lamentam-situacao-da-educacao-durante-a-pandemia)).
- Em set/2021, mais de 22 mil escolas de 3.096 municípios tinham planos preenchidos **[declaração oficial]** ([Agência Brasil](https://agenciabrasil.ebc.com.br/educacao/noticia/2021-09/tempo-de-aprender-termina-hoje-prazo-para-apresentar-plano-de-gestao)).

**Educação Conectada**
- A Lei 14.180/2021 foi sancionada com veto ao repasse direto às escolas, com base na LRF. O Congresso derrubou o veto em 27/09/2021 ([Agência Senado, 02/07/2021](https://www12.senado.leg.br/noticias/materias/2021/07/02/sancionada-politica-de-expansao-da-internet-de-alta-velocidade-em-escolas); [Agência Senado, 27/09/2021](https://www12.senado.leg.br/noticias/materias/2021/09/27/derrubado-veto-a-recursos-para-internet-nas-escolas)).
- A matéria registra R$ 223 milhões e 74 mil escolas atendidas em 2020, sem dizer de onde vêm esses números.

**Pandemia**
- O MEC vinha recusando o adiamento do Enem 2020. Anunciou o adiamento de 30 a 60 dias em 20/05/2020, um dia depois de o Senado aprovar o PL 1.277/2020 ([Agência Senado](https://www12.senado.leg.br/noticias/materias/2020/05/20/senadores-comemoram-adiamento-do-enem); [Poder360](https://www.poder360.com.br/brasil/inep-anuncia-adiamento-do-enem-por-ate-60-dias/)).
- As provas foram aplicadas em 17 e 24/01/2021 (versão impressa) e em 31/01 e 07/02/2021 (versão digital), com 5,78 milhões de candidatos confirmados ([Agência Senado](https://www12.senado.leg.br/noticias/materias/2021/01/11/bancada-do-pt-no-congresso-pede-novo-adiamento-do-enem)).
- A MP 934/2020 flexibilizou os 200 dias letivos e permitiu atividades não presenciais ([Agência Senado](https://www12.senado.leg.br/noticias/materias/2020/07/08/chega-ao-senado-mp-que-flexibiliza-dias-letivos-obrigatorios-na-educacao)).
- Itens com 1 veículo, portanto `nao_confirmado`:
  - em jun/2020, ofício do MEC à Economia apontou risco ao Enem 2021 com o limite discricionário de R$ 18,78 bilhões **[declaração oficial]** ([Poder360](https://www.poder360.com.br/governo/mec-sinaliza-que-pode-suspender-enem-em-2021-por-falta-de-recursos/));
  - o ministro atribuiu a erro de gráfica a falha na correção do Enem 2019, com cerca de 5 mil a 6 mil candidatos afetados ([Poder360](https://www.poder360.com.br/governo/weintraub-diz-que-erro-na-correcao-do-enem-afetou-6-000-candidatos/)).

**Fies**
- A MP 1.090/2021 previu descontos de até 92%. O governo informou mais de 1 milhão de estudantes com atraso e R$ 6,6 bilhões em atraso **[declaração oficial]** ([Agência Senado, 03/01/2022](https://www12.senado.leg.br/noticias/materias/2022/01/03/mp-concede-abatimento-de-ate-92-em-dividas-do-fies)).
- A conversão na Lei 14.375/2022 ampliou o desconto máximo para 99% ([Agência Senado, 22/06/2022](https://www12.senado.leg.br/noticias/materias/2022/06/22/com-veto-bolsonaro-sanciona-lei-que-reduz-em-ate-99-dividas-do-fies)).

### Grupo A (Lula 3, 2023 – set/2026)

**Pé-de-Meia**
- A Lei 14.818/2024 foi sancionada com vetos, com fundo de até R$ 20 bilhões ([Agência Senado, 17/01/2024](https://www12.senado.leg.br/noticias/materias/2024/01/17/sancionada-poupanca-para-estudante-de-baixa-renda-matriculado-no-ensino-medio)).
- Beneficiários e valores, todos **[declaração oficial]**:
  - 5,6 milhões de beneficiários e R$ 18,6 bilhões em 2024–2025 ([CNN, via GES3](https://www.cnnbrasil.com.br/educacao/pe-de-meia-reduz-abandono-escolar-no-ensino-medio-em-43-em-dois-anos/));
  - 6 milhões de estudantes até ago/2026, com até R$ 9.200 por aluno ([Poder360](https://www.poder360.com.br/poder-educacao/pe-de-meia-nascidos-em-novembro-e-dezembro-recebem-parcela-de-r-200/)).
- *Efeito declarado:* o MEC atribui ao programa a queda do abandono. São dois números diferentes:
  - abandono de 2,5% na rede pública em 2025, com queda de 34% desde 2024 ([CNN, 29/06/2026](https://www.cnnbrasil.com.br/educacao/apos-pe-de-meia-abandono-do-ensino-medio-chega-a-menor-nivel-desde-2007/));
  - queda de 43% citada em abr/2026.
  
  Nenhuma avaliação independente foi localizada, e o item fica `nao_confirmado`.
- *TCU:*
  - em mar/2026 o TCU mandou suspender pagamentos a CPFs de falecidos (2.113 registros) ([CNN](https://www.cnnbrasil.com.br/politica/tcu-manda-mec-suspender-pagamentos-do-pe-de-meia-a-cpfs-de-pessoas-mortas/)). O fato também está em A (GES-X23);
  - o financiamento fora do orçamento (Fipem) não tinha decisão definitiva em 25/08/2026 ([Poder360](https://www.poder360.com.br/poder-economia/ministros-do-tcu-questionam-desorcamentacao-em-pe-de-meia-e-desenrola/)). Só 1 veículo, portanto o status fica `nao_confirmado`.

**Escola em Tempo Integral**
- A Lei 14.640/2023 trouxe a meta de 1 milhão de novas matrículas **[declaração oficial]** ([Agência Senado](https://www12.senado.leg.br/noticias/materias/2023/08/01/programa-escola-em-tempo-integral-e-sancionado-com-vetos)).
- Pelo Censo 2025, 25,8% dos alunos da rede pública estão em tempo integral. O governo atribui o resultado ao programa, com R$ 4 bilhões investidos **[declaração oficial]** ([CNN, 26/02/2026](https://www.cnnbrasil.com.br/educacao/mec-estuda-remanejar-recursos-para-ensino-integral-apos-queda-de-matriculas/)).
- O ex-ministro declara que "nove em cada dez municípios" adotam o tempo integral ([Agência Senado, 28/04/2026](https://www12.senado.leg.br/noticias/materias/2026/04/28/camilo-santana-faz-balanco-das-acoes-do-governo-federal-na-educacao)).

**Compromisso Nacional Criança Alfabetizada**
- Lançado em 12/06/2023, com R$ 2 bilhões anunciados para 4 anos **[declaração oficial]** ([Poder360](https://www.poder360.com.br/educacao/lula-anuncia-r-2-bi-para-alfabetizacao-de-criancas-em-4-anos/)).
- Em 2025, 66% das crianças estavam alfabetizadas, acima da meta de 64% ([CNN](https://www.cnnbrasil.com.br/educacao/brasil-atinge-meta-com-66-das-criancas-alfabetizadas-em-idade-certa/); [Poder360](https://www.poder360.com.br/poder-educacao/brasil-supera-meta-de-alfabetizacao-de-criancas-em-2025/)).
- Em 2024 foram 59,2%, abaixo da meta de 60%. Este número só aparece no Poder360.

**Retomada de obras (Lei 14.719/2023)**
- Previsão de 3.540 obras em 1.659 municípios, cerca de R$ 4 bilhões e 450 mil vagas até 2026 **[declaração oficial]** ([Agência Senado](https://www12.senado.leg.br/noticias/materias/2023/11/06/lei-retoma-obras-paralisadas-na-saude-e-educacao); [Poder360](https://www.poder360.com.br/congresso/senado-aprova-projeto-para-retomada-das-obras-de-educacao/), que cita cerca de 3.600 obras).
- Em abr/2026 o ex-ministro declarou "quase 2,5 mil obras" retomadas, 1.683 creches e 685 escolas entregues **[declaração oficial]** ([Agência Senado](https://www12.senado.leg.br/noticias/materias/2026/04/28/camilo-santana-faz-balanco-das-acoes-do-governo-federal-na-educacao)).

---

## O que foi buscado
O procedimento foi o mesmo para os dois grupos.
- **Agência Senado**, pela busca interna (`@@search?SearchableText=`). Termos usados: escolas cívico-militares, Pecim, decreto 10.502, educação especial decreto STF, veto internet alunos, Lei 14.172, Fundeb, reitores pro tempore, lista tríplice, escolha de reitores, ensino médio sancionada, celulares, Lei de Cotas, PNE sancionado, Universidade Federal Indígena/Esporte, Cefet, "Tempo de Aprender", "Política Nacional de Alfabetização", "Educação Conectada", adiamento do Enem, Fies, Pé-de-Meia, retomada de obras.
- **Páginas de tag:**
  - Agência Brasil: escolas-civico-militares, tempo-de-aprender, educacao-especial, educacao-conectada;
  - Poder360: escolas-civico-militares, fundeb, reitores, lista-triplice, universidades-federais, universidade-federal(-indigena), novo-ensino-medio, lei-de-cotas, alfabetizacao, enem, fies, pe-de-meia, obras-paralisadas, future-se, educacao-domiciliar, politica-nacional-de-educacao-especial;
  - CNN: alfabetizacao, pe-de-meia.
- **Balanços simétricos:** relatório do MEC de mai/2022 (B) e discurso de Camilo Santana de abr/2026 (A). Os dois são declaração oficial.

## Lacunas
1. **Segundo veículo independente não localizado** para estes itens:
   - derrubada do veto da Lei 14.172 (só Agência Senado);
   - Lei 15.367 e lista tríplice;
   - Lei 15.100;
   - Lei 14.945;
   - PNE;
   - UFEsporte e UFFN;
   - Educação Conectada;
   - Fies (B).
   
   São fatos normativos com fonte A em outras extrações. Para os números citados nessas matérias, vale a marca de 1 veículo.
2. Contraproposta do Planalto para o Fundeb em jul/2020: só Poder360.
3. Pecim:
   - total final divergente (200, 202 ou 216);
   - número de alunos (120 mil) em 1 veículo;
   - destino efetivo das escolas depois de 2023: só intenção declarada pelas UFs.
4. STF e Decreto 10.502: número da ADI e data do referendo do plenário não aparecem nas matérias lidas.
5. Pé-de-Meia: não foi localizada avaliação independente de efeito, e os números de efeito do MEC diferem entre si (-34% e -43%).
6. Escola em Tempo Integral: não foi localizada série anual de matrículas fomentadas pelo programa.
7. Tempo de Aprender: alcance só por declaração do MEC; sem dado de execução.
8. Não foi localizada matéria de 2019 sobre o Decreto 10.004 (lançamento do Pecim) nem sobre o número do decreto de revogação (11.611/2023).

## Bloqueios
- Agência Brasil devolveu HTTP 429 (rate limit) em `tags/escolas-civico-militares?page=3` e `tags/educacao-conectada`. As páginas não foram repetidas.
- Páginas 404:
  - Poder360: tags `lei-14-172`, `tempo-de-aprender` e páginas antigas de `alfabetizacao`/`escolas-civico-militares`;
  - CNN: `tudo-sobre/educacao-especial`, `escolas-civico-militares`, `tempo-de-aprender`, `reitores` (esta última vazia para 2026).
- A busca do Poder360 (`?s=`) devolveu 403, e a da CNN foi barrada pelo robots.txt.
- O Gazeta do Povo, em `tudo-sobre/` com tags inexistentes, devolve a home.
- Houve timeouts na busca da Agência Senado (Future-se, educação domiciliar).

## Ressalvas metodológicas
- Tudo aqui é nível D. Pela v1.1, o status `implementada` quer dizer "fato confirmado em imprensa" e não substitui A/B para contagens, valores ou indicadores. A coluna `fontes_corroboracao` aponta a linha A/B.
- A Agência Senado foi tratada como 1 único veículo, mesmo com várias matérias. Matérias da mesma agência não contam como veículos independentes.
- Erros detectados nas matérias e registrados nas notas:
  - Poder360 grafa "Decreto 370" (o correto é 11.370/2023);
  - Poder360 data a MP 979 em "10.jan.2020" (a data é 10/06/2020);
  - Poder360 cita "PL 3179, de 2022" (o correto é 3.179/2012);
  - Agência Senado atribui a autoria do PL do Pé-de-Meia a Tabata Amaral (a conferir).
- O WebFetch processa as páginas com um modelo. Trechos entre aspas são os que ele devolveu como literais. Paráfrases vêm marcadas como "conforme extração".
- *Simetria:* para cada grupo foram buscados o ato normativo, a posição do Executivo, o número de alcance divulgado pelo governo, um balanço ministerial e controvérsias (TCU, STF, vetos). Os dois grupos têm registros desfavoráveis:
  - **B:** veto derrubado, MPs que caducaram ou foram devolvidas, decreto suspenso pelo STF, erro e atraso no Enem;
  - **A:** TCU no Pé-de-Meia, meta de alfabetização de 2024 não cumprida, veto total à Unifron.
