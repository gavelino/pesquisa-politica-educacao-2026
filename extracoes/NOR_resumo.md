# NOR – D2 Marco normativo (QP2) – resumo da coleta

Coletor: prefixo NOR · Data de acesso: 2026-10-02 · Corte: grupo B 01/01/2019–31/12/2022; grupo A 01/01/2023–30/09/2026.
Produtos: 36 fontes (`fontes/NOR-001` a `NOR-036`, todas nível A), 59 ações em `extracoes/NOR.csv` (29 B, 30 A), `fontes/urls_NOR.tsv` (117 URLs).

## 1. O que foi buscado (procedimento idêntico para os dois grupos)
WebSearch estava bloqueado (HTTP 403), então toda a localização foi feita com WebFetch em fontes primárias:
- **Inventário de MPs por ano** (2019–2026): `legis.senado.leg.br/dadosabertos/materia/pesquisa/lista?sigla=MPV&ano=AAAA`, filtradas pela ementa (educação, ensino, universidades, IFs, CAPES, CNPq, FNDCT, Fies, piso etc.), seguidas da ficha de cada MP (`/materia/MPV/n/ano`) para ver o destino.
- **Inventário de vetos por ano** (2019–2026): `.../lista?sigla=VET&ano=AAAA`, com o mesmo filtro e a ficha de cada veto para ver o resultado (mantido, rejeitado/derrubado, pendente).
- **Textos dos atos** em planalto.gov.br (ccivil_03): ementa, data, "(VETADO)", mensagem de veto, fórmula de promulgação (art. 66 §5º), notas de revogação.
- **Autoria e orientação do Governo** pela API da Câmara (`dadosabertos.camara.leg.br/api/v2/proposicoes/{id}`, `/autores`, `/votacoes`, `/votacoes/{id}/orientacoes`): PEC 15/2015 (Fundeb), PL 5.230/2023 (ensino médio), PL 5.384/2020 (cotas), PL 2.614/2024 (PNE), PL 5.874/2025, PL 2.401/2019 e PL 3.076/2020.
- Marcos pedidos: alfabetização, escolas cívico-militares, educação especial, reitores/lista tríplice, Fundeb, conectividade, cotas, ensino médio, PNE, piso, educação domiciliar.

## 2. Achados – Grupo B (Bolsonaro, 2019–2022)
- **Decretos:** Política Nacional de Alfabetização (D 9.765/2019), Pecim (D 10.004/2019), Política de Educação Especial (D 10.502/2020, vide ADI 6590), extinção de cargos e funções, entre elas FG/CD/FCC (D 9.725/2019) e regulamentação do Fundeb (D 10.656/2021). Os três primeiros foram revogados em 2023.
- **MPs sobre educação:** 914/2019 (reitores) perdeu eficácia; 979/2020 (reitores pro tempore) foi devolvida pelo Senado ("sem eficácia") e revogada pela MP 981; 934/2020 virou a Lei 14.040; 1.060/2021 (conectividade) perdeu eficácia; 1.075/2021 virou a Lei 14.350 (ProUni); 1.090/2021 virou a Lei 14.375 (Fies); 1.136/2022 (FNDCT) perdeu eficácia; 1.140/2022 foi convertida e sancionada em 2023.
- **Vetos derrubados:** Lei 13.935/2019 (psicólogos e assistentes sociais, veto total), Lei 14.172/2021 (conectividade, veto total, R$ 3.501.597.083,20), Lei 14.180/2021, Lei 14.214/2021, Lei 14.276/2021, LC 177/2021 (FNDCT, derrubada parcial) e PLC 184/2017 (pedagogia da alternância, derrubado em dez/2023).
- **Vetos mantidos:** Revalida, Fies-calamidade, Lei 14.040, Pró-Pesquisa Covid e Lei 14.375.
- **Sem veto:** Lei 14.113 (Fundeb), Lei 14.191, Lei 14.350 e Lei 14.351.
- **Fundeb (EC 108/2020):** a liderança do Governo orientou "Sim" no 1º turno da Câmara.
- **PLs do Executivo não aprovados:** educação domiciliar (PL 2.401/2019) e Future-se (PL 3.076/2020). Estão no CSV só para registro e marcados para EXCLUSÃO.

## 3. Achados – Grupo A (Lula 3, 2023–30/09/2026)
- **Decretos:** revogação do D 10.502 (D 11.370/2023), Compromisso Criança Alfabetizada com revogação do D 9.765 (D 11.556/2023), revogação do Pecim (D 11.611/2023), EaD na graduação (D 12.456/2025) e Política de Educação Especial Inclusiva (D 12.686/2025, alterado pelo D 12.773/2025).
- **MPs sobre educação:** 1.174/2023 (obras) e 1.198/2023 (poupança no ensino médio) perderam eficácia; 1.334/2026 (piso) virou a Lei 15.437/2026, com nova fórmula de reajuste. Nas listas de 2024 e 2025 não aparece MP normativa de educação.
- **Leis de iniciativa do Executivo:** Lei 14.945/2024 (ensino médio; Governo orientou "Sim"; veto parcial pendente), Lei 15.388/2026 (novo PNE, sem veto identificado) e Lei 15.367/2026. Esta última revoga o art. 16 da Lei 5.540/1968 (lista tríplice) e obriga, nos Institutos Federais, a nomeação do candidato mais votado.
- **Vetos derrubados:** Leis 14.695/2023, 14.734/2023 e 14.874/2024; derrubada parcial nas Leis 14.533/2023 e 14.818/2024.
- **Vetos mantidos:** Leis 14.640, 14.645 e 14.837.
- **Vetos pendentes:** Leis 14.914, 14.945, 14.952, 15.276 e 15.518 e LC 220 (SNE).
- **Vetos totais pendentes:** criação das UTFs MG/RJ (PL 5.102/2023) e da Unifron (PL 3.455/2023).
- **Sem veto:** Leis 14.723 (cotas), 14.934, 15.100 e 15.437 e Lei 14.540 (conversão de MP do grupo B).

## 4. Lacunas
1. **Lei 15.367/2026:** não foi possível ler o texto depois do art. 67 (página truncada). Ficaram sem verificação a regra nova para universidades, se a mudança veio do texto do Executivo ou do substitutivo e se houve mensagem de veto. Há download manual prioritário: DOU de 31/03/2026, p. 5.
2. **Teor de vetos:** as razões dos vetos e o conteúdo dos itens vetados não foram transcritos, nos dois grupos.
3. **Piso:** as portarias anuais de reajuste (2019–2026) não foram coletadas, nos dois grupos.
4. **STF:** ADI 6590 (D 10.502), ADI 6186 (D 9.725) e a ADI contra a Lei 14.172 não foram verificadas.
5. **Orientações do Governo:** só foram coletadas 3 votações na Câmara (PEC 15/2015, PL 5.230/2023 e PL 5.384/2020, esta sem registro). Faltam as sessões do Congresso sobre vetos e as votações no Senado.
6. **Autoria:** não foi verificada para as Leis 14.640, 14.934, 15.100, 15.518 e 14.113.
7. **PLs do Executivo não aprovados:** só foram levantados para o grupo B (pedido explícito sobre educação domiciliar e Future-se). Falta o levantamento equivalente para o grupo A.
8. **Portarias e resoluções do MEC** (ex.: implementação da Lei 13.415, Novo Ensino Médio) ficaram fora do levantamento. O escopo foi lei, MP e decreto.

## 5. Ressalvas metodológicas
- **Extração parafraseada:** o WebFetch devolve conteúdo processado por modelo, e parte dos trechos (marcados "processado" ou "extração") veio parafraseada. A filtragem das listas do Senado também foi automática: a ficha VET 33/2022 não apareceu no filtro e só foi achada pela ficha da MP. Por isso o inventário pode estar incompleto, nos dois grupos. É preciso refiltrar as listas completas depois do download.
- **Leitura de "Mantida parcialmente":** no Senado, foi lida como derrubada parcial. Isso foi confirmado pela promulgação de partes vetadas da Lei 14.533; nos demais casos ainda precisa ser conferido.
- **Classificação no CSV:**
  - **origem:** "Executivo" vale para MPs, decretos e PLs de autoria do Executivo. "Legislativo_com_sancao" vale para iniciativa parlamentar sancionada. "Legislativo_veto_derrubado" vale quando o trecho relevante resultou de derrubada de veto.
  - **EC 108:** a emenda foi promulgada pelo Congresso, sem sanção, e está codificada como Legislativo_com_sancao por falta de categoria própria.
  - **status "revertida":** em MPs que caducaram, indica só que perderam vigência.
- **Atos cruzados**, registrados nos dois grupos:
  - D 9.765 → D 11.556;
  - D 10.004 → D 11.611;
  - D 10.502 → D 11.370;
  - MP 1.140/2022 → Lei 14.540/2023;
  - veto ao PLC 184/2017 (2022) → derrubada em 2023;
  - MP 914/2019 → Lei 15.367/2026, sobre o mesmo objeto (escolha de reitores).
- **Contagens:** os números de atos por grupo não devem ser comparados diretamente, porque os períodos têm durações diferentes (48 meses no grupo B contra 45 no grupo A) e a iniciativa congressual varia entre legislaturas.
