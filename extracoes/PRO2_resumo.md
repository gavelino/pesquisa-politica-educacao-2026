# PRO2 – 2ª rodada D3 (lacunas de PRO) – Resumo da coleta

Coletor: agente PRO2 | Data de acesso: 2026-10-02 | Protocolo PICOC v1.0 | 14 fontes (PRO2-001 a PRO2-014), 13 registros em `PRO2.csv`

## 1. Ambiente
- Funcionaram: planalto.gov.br (atos individuais), API da Câmara (fichas, autores, tramitações, busca com `autor=` e `keywords=`), Dados Abertos do Senado (`legislacao/lista`, `legislacao/{id}`, `processo`).
- Falharam: API do TCU (HTTP 503 em quase todas as tentativas durante a sessão; 2 consultas responderam no início); gov.br/mec `search_rss` (CAPTCHA); listas anuais de leis do Planalto/www4 (403/robots); `sdleg-getter` do Senado (verificação anti-robô); inteiro teor da Câmara (`prop_mostrarintegra`, HTTP 429 depois da 1ª leitura); eaud.cgu (robots); Tesouro CKAN (sem dados do Pé-de-Meia).
- O XML anual de leis do Senado chegou truncado ao processador em vários anos (ver PRO2-004).

## 2. O que foi buscado (os mesmos procedimentos para os dois grupos)
- Leis de criação de universidades e IFs: lista anual de leis do Senado de 2019 a 2026 (filtro por ementa); leitura no Planalto de cada lei localizada; API da Câmara `autor=Poder Executivo` com `keywords=Universidade` e `keywords=Instituto Federal` desde 01/01/2019; autores e tramitações de cada PL.
- Pecim: RQS 672/2023 (processo no Senado e documentos); busca na Câmara por "Escolas Cívico-Militares" e por RICs (a busca por RIC com palavra-chave retornou vazio em todos os anos); TCU "cívico-militares" e "Pecim".
- Escola em Tempo Integral e EMTI: TCU (Ac. 310/2026 relido; buscas novas com 503); gov.br/mec (CAPTCHA).
- Fies/ProUni: API da Câmara `autor=Poder Executivo` com "Financiamento Estudantil" e "Prouni" desde 2019; Planalto (L14350/2022, MPV 1355/2026); TCU (503).
- Pé-de-Meia: Planalto (D11901/2024); TCU (lista de acórdãos obtida; texto do Ac. 2614/2026 com 503); Tesouro (sem dados).
- Tempo de Aprender e Conta pra Mim: API da Câmara (só o PDL 140/2021, sobre editais MEC/Unesco da Sealf, não incluído); TCU (503).

## 3. Encontrado – Grupo B (2019–2022)
- Lei 13.856/2019 criou a UFNT (desmembrada da UFT), com 175 cargos técnico-administrativos e CD/FG (A). Projeto de origem não verificado.
- O Executivo retirou o PL 11.279/2019 (Msg 84/2019). O projeto vinha da Mensagem 799/2018, do governo anterior, e criava IFs e duas universidades no Amazonas (A).
- Inventário: nenhuma proposta nova do Executivo para criar universidades ou IFs em 2019–2022 (A, com a limitação da busca).
- Pecim: "mais de 200 escolas" e "mais de 120 mil alunos" aparecem só na justificação de um PDL, atribuídos ao MEC → nao_confirmado. Recursos por ano não obtidos.
- ProUni: a Lei 14.350/2022 (MP 1.075/2021) foi lida, mas já está em NOR-B09. Não foi duplicada; PRO2-012 serve de corroboração.

## 4. Encontrado – Grupo A (2023 – set/2026)
- Cinco leis de 2026, todas de PLs do Executivo:
  - Unind (L15.418)
  - UFEsporte (L15.457)
  - IF do Sertão Paraibano (L15.367, art. 1º, XXIV)
  - UFFN (L15.520)
  - CEFET-MG e CEFET-RJ transformados em UFCI (L15.521)
  
  Nenhuma dessas leis cria cargos próprios. Três condicionam a implantação a dotação → status "parcial". Em 2023–2024 nenhuma proposta de criação foi enviada.
- Padrão observado: em 31/07/2026 o Executivo vetou dois PLs parlamentares com o mesmo objeto (VET 41 e 42/2026, em NOR-014) e depois enviou projetos próprios. **Sugere-se nota cruzada em NOR-A29**: a UFFN foi criada pela L15.520.
- Pecim: Ofício Circular MEC 4/2023, que determina a desmobilização de militares (10/07/2023). Existência conhecida só pela ementa de um PDL → nao_confirmado.
- Fies: a MP 1.355/2026 previa renegociação com descontos de até 99% ou 77% e perdeu a eficácia → parcial.
- Pé-de-Meia: valores dos incentivos (R$ 200, R$ 1.800, R$ 1.000 e R$ 200 do Enem) no Decreto 11.901/2024 (A). Preenche a lacuna "valores só em fonte D".

## 5. Lacunas (não encontradas ou não verificáveis)
- Novos campi de IFs e universidades por portaria (2019–2026; Novo PAC 2024): nenhum ato lido (DOU e gov.br inacessíveis), nos dois grupos.
- Pecim: recursos 2019–2022 e plano de transição de 2023. A resposta oficial existe (Ofício MEC 141/2025 ao RQS 672/2023, `sdleg-getter dm=9888242`), mas não foi lida → **download manual prioritário**.
- Escola em Tempo Integral: matrículas pactuadas ou criadas e repasses não obtidos. Normas citadas pelo TCU: Portaria MEC 1.495/2023 e Res. FNDE 18/2023.
- EMTI 2019–2022, Tempo de Aprender e Conta pra Mim: nenhum dado de execução nem ato lido.
- Fies e ProUni: série anual 2019–2025 de contratos e bolsas não obtida. Nenhum dos dois grupos tem a série.
- Pé-de-Meia: valores pagos e beneficiários por ano em fonte A não obtidos. Ac. TCU 2614/2026 (23/09/2026) localizado, mas não lido.
- UFNT: autoria do projeto não verificada. PL 11.279/2019: lista de IFs, custo e justificativa da retirada não lidos.

## 6. Ressalvas metodológicas
- O inventário de leis está incompleto por truncagem. "Nenhuma lei em 2020–2025" é resultado de busca, não prova de inexistência. A consulta à Câmara cobre só iniciativas do Executivo indexadas.
- Criar uma universidade por lei não equivale a implantá-la: as leis de 2026 dependem de lei de cargos e de orçamento. Não comparar contagens de leis como se fossem capacidade instalada.
- O registro do Grupo A está concentrado no fim do mandato (mai–set/2026, ano eleitoral). Registrar o fato sem interpretá-lo.
- A falta de TCU nesta rodada reduziu as evidências B nos dois grupos de forma igual.
