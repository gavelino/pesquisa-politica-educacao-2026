# PRO – Dimensão D3 (Programas federais de educação) – Resumo da coleta

Coletor: agente PRO | Data de acesso: 2026-10-02 | Protocolo PICOC v1.0

## 1. Ambiente e restrições
- WebSearch BLOQUEADO (HTTP 403 do proxy). Buscadores via WebFetch (DuckDuckGo, Bing, Google) bloqueados por robots.txt.
- gov.br (MEC, FNDE, INEP) retornou CAPTCHA em todas as tentativas; in.gov.br (DOU) bloqueado por robots; Portal da Transparência renderiza via JS (vazio); portal.tcu.gov.br/busca bloqueado.
- Funcionaram: planalto.gov.br (atos), API de Dados Abertos da Câmara (dadosabertos.camara.leg.br), API REST de jurisprudência do TCU (pesquisa.apps.tcu.gov.br – `documentosResumidos` para busca e `documento?termo=KEY:...` para o texto integral). A maior parte dos dados de execução veio de acórdãos do TCU (nível B).
- Wikipedia (D) foi usada uma vez, apenas para localizar números do Pé-de-Meia; nada registrado com base nela.

## 2. O que foi buscado (mesmos termos para os dois grupos)
Planalto: D10004/2019, D11611/2023, D9765/2019, D11556/2023, L14640/2023, L14818/2024 (+alterações), L15265/2025, L14719/2023, D11713/2023, L14180/2021, L14172/2021, L14040/2020, L14375/2022, L14945/2024, D12358/2025.
Câmara (API): PL 3076/2020 (Future-se), PL 2617/2023, PL 5230/2023, PL 54/2021, MPV 1198/2023.
TCU (busca na jurisprudência): "pé-de-meia"; "cívico-militares"; "Pecim"; "cívico-militar"; "tempo de aprender" OR "política nacional de alfabetização"; "Tempo de Aprender"; "Conta pra Mim"; "Brasil na Escola"; "criança alfabetizada"; "educação conectada"; "escolas conectadas"; "escola em tempo integral"; "ensino médio em tempo integral" fomento EMTI; "ensino remoto" MEC pandemia; PNAE "per capita" reajuste; "alimentação escolar" + Res. CD/FNDE 2/2023; "Mais Professores" OR "Pé-de-Meia Licenciaturas"; "Fundo de Financiamento Estudantil" auditoria; Fies auditoria contratos vagas; "novos campi" "institutos federais".

## 3. Encontrado – Grupo B (Bolsonaro 2019–2022)
- Criação do Pecim (Decreto 10.004/2019) – A; sem dados de execução.
- PNA (Decreto 9.765/2019) – A; Tempo de Aprender, Conta pra Mim e Brasil na Escola confirmados só como ações relatadas pela Casa Civil ao TCU (Ac. 2060/2023) – B, sem números.
- Future-se: PL 3076/2020 do Executivo, não aprovado → nao_executada.
- Educação Conectada: Lei 14.180/2021 (sanção com veto parcial derrubado); execução PIEC 2019 (R$ 224 mi fibra + R$ 60 mi satélite) e 2020 (R$ 104,4 mi), com achados TCU de atrasos e execução fragmentada (Ac. 326/2022).
- Lei 14.172/2021 (internet para alunos/professores): veto total do Executivo, derrubado; ADI 6926 (improcedente); MP 1.060/2021; repasse de R$ 3,5 bi em 10/3/2022.
- Pandemia: MP 934/2020 → Lei 14.040/2020; PNAE/PDDE (Lei 13.987/2020; R$ 1,4 bi PNAE repassados até ~mai/2020; R$ 720 mi PDDE); TCU Ac. 2620/2021: ações do MEC "fragmentadas, intempestivas e sem foco específico".
- Fies: 50.876 novos contratos em 2022 (vs 732.593 em 2014); renegociação Lei 14.375/2022 (MP 1.090/2021).
- Novo Ensino Médio: cronograma só em jul/2021 (Portaria 521/2021), atrasos e comitê inoperante (TCU Ac. 1748/2023).
- Indicador: ocupação de vagas novas nas federais 90% (2019) → 75% (2022).

## 4. Encontrado – Grupo A (Lula 3, até 30/09/2026)
- Revogação do Pecim (Decreto 11.611/2023) e da PNA (Decreto 11.556/2023).
- CNCA: dotação 2023-2025 R$ 1,899 bi; adesão de 100% dos entes; ICA 56% → 59% → 66% (meta 64%); TCU aponta indício de desconformidade (salário-educação/bolsas) e ausência de gestão de riscos (Ac. 1537/2026).
- Escola em Tempo Integral (Lei 14.640/2023, PL do Executivo) – A; sem dados de execução.
- Pé-de-Meia (Lei 14.818/2024, de PL parlamentar 54/2021, com MP 1.198/2023 do Executivo): R$ 12,5 bi e ~4 mi beneficiários em 2024; custeio estimado 2025 R$ 12,2 bi; cautelar do TCU contra financiamento fora do OGU (Ac. 61/2025), flexibilizada (Ac. 297/2025), regularização via Lei 15.265/2025 considerada cumprida (Ac. 2261/2026); 12.877 beneficiários acima do critério de renda, discrepância beneficiários × matrículas não confirmada (Ac. 663/2026).
- Enec (Decreto 11.713/2023): R$ 9,6 bi em gastos federais (fontes mistas); TCU: sem plano formal, metas difusas (Ac. 1082/2026).
- Lei 14.640/2023 prorrogou a Lei 14.172/2021 até 2026; TCU: maior parte dos recursos ainda sem uso em jul/2023.
- Pacto de Retomada de Obras (Lei 14.719/2023): 5.641 obras passíveis, 3.783 com interesse, 521 deferidas até ago/2024; TCU aponta desvio de RP3/GND4 para obras novas do PAC (Ac. 2103/2024).
- Desenrola Fies (art. 19 da Lei 14.719/2023), com os mesmos tetos de desconto da Lei 14.375/2022.
- Mais Professores (Decreto 12.358/2025) – A; sem execução.
- Reforma do Ensino Médio (Lei 14.945/2024, PL do Executivo).
- PNAE: Resolução CD/FNDE 2/2023 (reajuste per capita) citada pelo TCU; dotação creche/pré 2022 R$ 1.050 mi → 2023 R$ 1.488 mi (inconsistência interna no documento).
- Execução 2025 Ensino Superior (pago R$ 13 bi) e EPT (pago R$ 3,13 bi); ocupação de vagas nas federais 78% (2023), 71% (2024).

## 5. Lacunas
- Pecim: nº de escolas/alunos e valores 2019-2022 e plano de transição de 2023 – não obtidos (nenhum acórdão TCU; gov.br bloqueado).
- Tempo de Aprender / Conta pra Mim / Brasil na Escola: atos de criação (portarias) e execução não obtidos.
- Escola em Tempo Integral: matrículas pactuadas/criadas e repasses – não obtidos. EMTI (fomento ao ensino médio integral, 2016-2022) – não coletado no Grupo B.
- Pé-de-Meia: valores por incentivo só em fonte D; série oficial por mês/ano não obtida.
- Fies/ProUni: série anual 2019-2026 e execução do Fies Social / Desenrola Fies não obtidas.
- Novos campi de IFs/universidades (PAC 2024): nenhum ato ou auditoria A/B localizado.
- PNAE: valores per capita por etapa (Res. 2/2023) não obtidos; para 2019-2022 nenhum ato de reajuste localizado (é lacuna de busca, não prova de inexistência).
- Mais Professores / Pé-de-Meia Licenciaturas: execução não obtida.
- Sisu: número de vagas por edição não obtido (só o indicador de ocupação do TCU).
- Execução orçamentária comparável 2019-2022 dos programas finalísticos (equivalente a PRO-A18) não obtida.
- Leis 13.987/2020 e origem das Leis 14.719/2023 e 15.265/2025: autoria e posição do Executivo não verificadas diretamente.

## 6. Ressalvas metodológicas
- Assimetria de fontes: o Grupo A tem mais auditorias recentes do TCU (programas novos sob fiscalização ativa e solicitações do Congresso); o Grupo B tem mais auditorias "ex post" sobre a pandemia. Isso reflete o calendário de fiscalização, não necessariamente a quantidade de ações.
- Vários números foram estruturados pelo processador do WebFetch a partir de acórdãos longos; os trechos entre aspas são literais, mas tabelas e listas devem ser conferidas nos PDFs (urls_PRO.tsv).
- Valores na coluna `valor_nominal` têm naturezas diferentes (limite autorizado, dotação, previsto, repassado, pago) – a natureza está indicada em `observacoes`; não somar entre linhas.
- Indicadores de resultado (ICA, ocupação de vagas, contratos Fies) são multicausais e não devem ser atribuídos só ao governo do período.
- Ações que cruzam mandatos foram registradas nos dois lados (Pecim, PNA, Lei 14.172, Novo Ensino Médio, renegociação do Fies).
