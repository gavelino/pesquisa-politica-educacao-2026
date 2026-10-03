# Verificação independente: amostra de 42 registros

Data da conferência: 2026-10-02. Método: cada URL primária foi reaberta com WebFetch, pedindo transcrição literal. As APIs paginadas (SICONFI, Senado) foram consultadas com offsets ou janelas de data menores, porque o WebFetch trunca respostas grandes. Nos valores do DCA, conferi as identidades contábeis (Empenhado = Liquidado + RAP não processados; Liquidado = Pago + RAP processados), porque o sumarizador às vezes troca o rótulo das colunas. Detalhes por registro em `resultado_verificacao.csv`.

## 1. Taxas de confirmação

| Recorte | n | CONFIRMADO | DIVERGENTE | CARACT. INADEQUADA | NÃO VERIFICÁVEL | Taxa |
|---|---|---|---|---|---|---|
| **Geral** | 42 | 38 | 2 | 1 | 1 | **90,5%** |
| FIN.csv | 15 | 15 | 0 | 0 | 0 | 100% |
| FLA.csv | 6 | 4 | 2 | 0 | 0 | 66,7% |
| GES.csv | 3 | 2 | 0 | 1 | 0 | 66,7% |
| NOR.csv | 7 | 7 | 0 | 0 | 0 | 100% |
| PRO.csv | 4 | 3 | 0 | 0 | 1 | 75% |
| RES.csv | 7 | 7 | 0 | 0 | 0 | 100% |
| Grupo A (Lula 3) | 20 | 19 | 0 | 1 | 0 | 95,0% |
| Grupo B (Bolsonaro) | 15 | 14 | 0 | 0 | 1 | 93,3% |
| Flávio | 6 | 4 | 2 | 0 | 0 | 66,7% |
| Linha de base | 1 | 1 | 0 | 0 | 0 | 100% |

Todos os valores numéricos da amostra conferiram dentro da tolerância de 0,5%. A maior diferença foi a de PRO-B11: R$ 124,14 entre o valor previsto em lei e o total repassado. Os problemas encontrados estão em datas, instrumentos, orientações de voto e na redação dos títulos, não nos valores.

## 2. Divergências e correções propostas

1. **FLA-P05 (DIVERGENTE).** A autoria confere. Porém a Emenda nº 2 ao PL 5.384/2020 é emenda de **CCJ**, apresentada em **26/09/2023** e rejeitada na CCJ em 18/10/2023. Não é emenda de Plenário de 24/10/2023. O Parecer 164/2023-PLEN, de Paulo Paim, rejeitou apenas as Emendas 3 a 10. **Correção:** separar em dois registros:
   - Emenda 2: Comissão (CCJ), 2023-09-26, rejeitada na CCJ.
   - Emendas 9 e 10: Plenário, 2023-10-24, coautoria, rejeitadas no parecer de Paim.
2. **FLA-V12 (DIVERGENTE, afeta o índice de alinhamento).** O voto Sim e o placar de 75 a 0 conferem. O registro, porém, diz que a orientação do Governo Bolsonaro está "indisponível" e por isso exclui a votação do índice. No DSF, a fala do Líder do Governo continua com "*ao encaminhar favoravelmente essa matéria*". O trecho guardado em FLA-024 foi cortado antes dessa frase. **Correção:** registrar a orientação do Governo como favorável, classificar a votação como "alinhado" e reincluí-la no índice. Se a regra for exigir a fórmula literal "orienta", ela precisa estar escrita no protocolo e valer para todos os casos.
3. **GES-X29 (CARACTERIZAÇÃO INADEQUADA, leve).** O título diz "piso mínimo = INPC". Na lei, o INPC é o limite **inferior do percentual de reajuste**, não o valor do piso. O título também omite o **teto** do reajuste: a variação nominal da receita do Fundeb nos 2 anos anteriores. **Correção:** "(...; reajuste mínimo = INPC; máximo = variação nominal da receita do Fundeb nos 2 anos anteriores)".
4. **PRO-B03 (NÃO VERIFICÁVEL).** O Acórdão TCU 2060/2023 confirma só que o programa Tempo de Aprender existe. Ele não traz a data (2020), a Portaria MEC 280/2020 nem o vínculo com a PNA. **Ação:** obter a portaria no DOU. Até lá, rebaixar data e instrumento para "não verificado".

### Ressalvas em registros confirmados (sem mudar a classificação)
- **FIN-A084.** O valor de R$ 135.937.648 **não aparece** no D11216. É a diferença na coluna "Demais" do MEC entre o D11154 (21.110.276.641) e o D11216, Seção II "até dezembro" (20.974.338.993). O cálculo confere. Incluir o D11154 nas fontes primárias e marcar o valor como derivado.
- **FLA-P09.** Flávio é coautor (5º signatário) da R.S 13/2024, apresentada em 31/10/2024, e 1º signatário da R.S 14/2024. A nota de FLA-039 diz "não conhecidos", mas a API registra situação "CONHECIDA": a R.S 13 com deliberação "NAOCUMPRREG" e a R.S 14 com "RECEBIDO". Corrigir a nota.
- **FLA-V16, FLA-V12 e FLA-V27.** O voto individual aparece só no serviço `dadosabertos/votacao`, não nas páginas citadas. Incluir esse serviço em fontes_primarias. A URL ampla de FLA-038 é truncada pelo WebFetch, então convém citar janelas curtas.
- **PRO-B11.** A observação "após decisão do STF pendente" é confusa: o STF julgou a ADI 6926 em 24/06/2022, depois do repasse de 10/03/2022. Reescrever.
- **PRO-A05.** Os R$ 20 bi são um teto de autorização, removido pela Lei 15.265/2025, não execução. Não somar a valores executados. A unidade "BRL" difere de "R$ correntes" usada em FIN; padronizar.
- **RES-C001 e RES-C003.** A notícia citada traz os percentuais (56% e 66%), mas não as datas registradas (2024-05 e 2026-03-23) nem o recorte "rede pública". Citar a fonte desses atributos.
- **GES-X24.** Os 62% são "do total **autorizado** para investimentos". Explicitar no título.
- **NOR-A21.** Não usar a afirmação do sumarizador de que cursos de saúde e licenciaturas "não podem ser semipresenciais". Ela não foi transcrita literalmente.

## 3. Padrões de viés e de rigor

- **Valores financeiros e normas: nenhum viés detectado.** FIN, NOR e RES confirmaram 100%, com o mesmo tipo de fonte (SICONFI, RTN, Planalto, SIDRA) e o mesmo grau de detalhe para A e B. Os títulos são descritivos e simétricos. Por exemplo, "Redução do limite de empenho do MEC" aparece tanto em B (FIN-A083/A084) quanto em A (FIN-A088). Os resultados de primeiro ano de governo são atribuídos ao governo em exercício nos dois lados (RES 2019 → B; Ideb e ICA 2023 → A), o que é consistente, embora discutível nos dois casos.
- **Rigor ligeiramente assimétrico entre A e B, em documentação e não em conteúdo.**
  - O único registro não verificável da amostra é de B (PRO-B03). É um programa de B sem ato de criação, sem valores e sem beneficiários. A causa relatada é bloqueio de acesso (DOU, gov.br) e não escolha do coletor. O efeito, porém, é que a documentação dos programas de B fica mais fraca, e isso pode sub-representar a atuação de B na dimensão de programas.
  - O único caso de caracterização imprecisa é de A (GES-X29). A omissão do teto torna a regra mais generosa do que é, ou seja, é favorável a A. O efeito é pequeno.
- **FLA: o arquivo com mais problemas, que exige revisão integral.**
  - A taxa de confirmação foi de 66,7%. Os dois erros tratam a atuação de Flávio de forma desfavorável ou incompleta.
  - FLA-P05 atribui a ele mais uma emenda rejeitada em Plenário do que de fato houve.
  - FLA-V12 tira do índice um voto alinhado ao Governo Bolsonaro porque a fala de orientação foi lida de forma truncada.
  - A amostra é pequena (n = 6) e não permite afirmar viés intencional. Ainda assim, recomenda-se conferir de novo todas as orientações classificadas como "indisponível" em FLA.csv, para saber se a exclusão afeta mais os votos alinhados ou os não alinhados.
- **Distribuição dos cortes em FIN.csv, a conferir (fora da amostra).** Há 5 registros "corte_descontinuacao" para B e 2 para A. A diferença pode ser real (os contingenciamentos de 2019 e 2021–2022 foram expressivos). Mesmo assim, convém confirmar que os decretos de programação de 2023 e de 2026, e outros bloqueios do MEC no governo A, foram varridos com o mesmo critério usado em B.
- **Limitação metodológica que vale para os dois lados.** Toda a leitura passa por um modelo sumarizador. Nesta verificação ele trocou rótulos de colunas no DCA, inverteu as ementas da MP 1.334 e da Lei 15.437 e fez inferências não literais (NOR-A21). As identidades contábeis e as consultas com janelas curtas foram essenciais. Os valores-chave devem ser conferidos nos arquivos originais baixados (`baixar_fontes.sh`).
