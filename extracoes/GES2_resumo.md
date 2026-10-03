# GES2: perfil dos Ministros da Educação × perfil do cargo (rubrica R1–R5)

Coleta em 03/10/2026 com WebFetch. O WebSearch foi testado uma vez e foi bloqueado (HTTP 403 no proxy). Fontes: GES2-001 a GES2-039 (19 do TCU, nível B; 11 de Planalto, Senado, ALECE e Inep, nível A; 9 de Wikipedia e imprensa, nível D). Extrações em `extracoes/GES2.csv` (18 linhas), URLs em `fontes/urls_GES2.tsv`.

## Rubrica (objetiva, igual para todos)
- **R1, formação em educação ou área afim.** Sim: título em Educação, Pedagogia ou licenciatura. Parcial: título em outra área da grande área "Ciências Humanas" da CAPES (Filosofia, Teologia, Ciências Sociais etc.). Não: título em outras áreas.
- **R2, docência ou pesquisa prévia.** Vínculo docente ou de pesquisa registrado.
- **R3, gestão educacional prévia.** Secretaria de educação, reitoria ou vice-reitoria, direção de instituição de ensino, ou cargo de direção no MEC ou em suas autarquias e fundações.
- **R4, gestão pública executiva prévia.** Governador, prefeito, secretário estadual ou municipal, ou cargo de direção na administração federal. Mandatos legislativos são registrados à parte.
- **R5, experiência no MEC ou em suas autarquias** (FNDE, Inep, CAPES etc.) antes de ser ministro.
- "Não" quer dizer "sem registro localizado", e não prova de ausência. Entre parênteses vai o nível da melhor evidência. Quando só há fonte D, o item é **nao_confirmado**.

## Tabela ministro × perfil

| Ministro (grupo) | Período no cargo | Duração (meses) | Formação (melhor fonte) | R1 | R2 | R3 | R4 | R5 |
|---|---|---|---|---|---|---|---|---|
| Ricardo Vélez Rodríguez (B) | 01/01/2019–08/04/2019 | 3,2 | Filosofia (graduação e doutorado), Teologia; mestrado PUC-Rio (D) | Parcial (D) | Sim (B: aposentado da UFJF; docência D) | Não | Não | Não |
| Abraham Weintraub (B) | 08/04/2019–19/06/2020 | 14,4 | Economia (USP); mestrado em Administração/Finanças (FGV) (D) | Não (D) | Sim (B: admissão Unifesp; docência D) | Não | Parcial (B: responsável nas contas da Presidência em 2019; SE da Casa Civil só D) | Não |
| Milton Ribeiro (B) | 16/07/2020–28/03/2022 | 20,4 | Teologia, Direito; mestrado em Direito (Mackenzie); doutorado em Educação (USP) (D) | Sim (D) | Sim (D) | Sim (D: vice-reitor Mackenzie) | Não | Não |
| Victor Godoy Veiga (B) | 29/03/2022 (interino) / 14/04/2022 (efetivo)–31/12/2022 | 9,1 | Engenharia de redes (UnB); pós lato sensu (ESG) (D) | Não (D) | Não | Sim (A: SE/MEC) | Sim (A: SE/MEC; CGU B/D) | Sim (A) |
| Camilo Santana (A) | 01/01/2023–02/04/2026 | 39,0 | Agronomia (UFC); mestrado em Desenvolvimento e Meio Ambiente (UFC) (D) | Não (D) | Não | Não | Sim (D: governador e secretário estadual; B indireto) | Não |
| Leonardo Barchini (A) | 02/04/2026–em exercício em 30/09/2026 | 5,9 (até o corte) | Direito; mestrado em Ciências Sociais (UnB) (D) | Parcial (D) | Não | Sim (B: SE/MEC; Auditor-Chefe da CAPES) | Sim (B: SE/MEC) | Sim (B: CAPES e SE/MEC) |
| Carlos Decotelli (B, só fato) | Nomeado em 25/06/2020; nomeação tornada sem efeito em 30/06/2020, sem posse (D) | 0 | Economia (UERJ); mestrado (FGV) (D) | n/a | n/a | n/a | n/a | n/a |

Mandatos legislativos anteriores: só Camilo Santana tem (deputado estadual no CE, nível A na lista da ALECE; senador eleito em 2022, nível A). Nenhum dos ministros do grupo B tem mandato legislativo registrado.

## O que foi buscado (os mesmos procedimentos para os 7 nomes)
- **TCU** (pesquisa.apps.tcu.gov.br, `documentosResumidos`): buscas pelo nome completo de cada um (Vélez, Weintraub/"Abraham Bragança", Milton Ribeiro, Victor Godoy e Godoy Veiga, Camilo Sobreira de Santana, Barchini/"Leonardo Osvaldo", Decotelli), mais as prestações de contas do MEC.
- **Planalto**: atos de ministério assinados no início e no fim de cada gestão (D9.665/2019, D9.765/2019, MP979/2020, L14.040/2020, L14.407/2022, D11.238/2022, D11.342/2023, L15.388/2026).
- **Senado dados abertos**: senador 6336 (dados básicos, mandatos, cargos, historicoAcademico, profissão). **ALECE**: PDF "Deputados na História".
- **Inep**: search_rss e agenda de autoridades (março e abril de 2022, julho de 2020, abril de 2026).
- **Câmara dados abertos**: proposições por palavra-chave ("Barchini", "Godoy"), sem resultado.
- **Nível D, só para localizar**: Wikipedia (en/pt), Agência Brasil, CNN Brasil.
- **Inacessíveis**: gov.br/mec e gov.br/planalto (CAPTCHA), in.gov.br/DOU (robots), lattes.cnpq.br e buscatextual (falha TLS), STF (403), TSE divulgacandcontas (403), gov.br/pf (busca sem resultado), ceara.gov.br e casacivil.ce.gov.br (403/TLS), repositórios UFC e USP, BDTD (timeout/robots), OEI (403), pt.wikipedia (só cache).

## Achados por grupo
**Grupo B**
- Datas com apoio A/B: Vélez no cargo em 02/01/2019; Weintraub no cargo de 11/04/2019 a 09/06/2020, com exoneração com efeito em 19/06/2020 (ato publicado em 20/06 e retificado, TCU); Milton Ribeiro no cargo em 18/08/2020 e responsável nas contas de 2022; Godoy como SE/MEC em mar/2022 e ministro em 18/10/2022.
- Contas do MEC de 2019 e de 2022 julgadas regulares, com quitação plena, para os quatro ministros.
- TCU 2419/2020 (viagem de Weintraub): improcedente, com cópia ao MPF.
- TCU 2371/2023 (PAR/FNDE "durante a gestão do então Ministro" Milton Ribeiro): procedente, mas o ex-ministro não consta como responsável.
- Prisão e investigação de Milton Ribeiro e investigações de Weintraub no STF: só fonte D, **nao_confirmado**.

**Grupo A**
- Camilo Santana no cargo em 01/01/2023. Saída indireta pelo Senado (exercício do mandato a partir de 02/04/2026). Contas de 2023 regulares.
- TCE estadual (Ceará) arquivada por prescrição.
- Barchini: Auditor-Chefe da CAPES em 2005 e servidor admitido na CAPES. SE/MEC até set/2023 e de novo a partir de 07/08/2024 (TCU 921/2026). Representação sobre a OEI parcialmente procedente, com o conflito de interesses julgado improcedente e sem multa. Contas de 2024 regulares com ressalva contábil. Assina como ministro em 14/04/2026.

## O que NÃO foi confirmado (lacunas)
1. **Atos de nomeação e exoneração no DOU de todos os ministros.** As datas de posse e saída de Vélez, Ribeiro, Godoy (interino e efetivo) e Barchini, e a nomeação e revogação de Decotelli, vêm de fonte D. A URL do decreto de 29/03/2022 (Godoy) está no TSV.
2. **Motivo formal da saída** (a pedido, para disputar eleição etc.). Nenhum foi confirmado em A/B. Para Camilo, há só a evidência indireta do retorno ao Senado.
3. **Formação acadêmica de todos.** Lattes, repositórios e TSE estavam inacessíveis, e a base do Senado não traz formação. **Todo o R1 é nível D.**
4. Docência de Vélez e de Weintraub: o TCU registra o vínculo (aposentadoria na UFJF, admissão na Unifesp) sem indicar o cargo. Docência e vice-reitoria de Ribeiro: só D.
5. Cargos de Camilo como governador e secretário estadual: só D. O TCU o lista como responsável sem indicar o cargo.
6. Se Barchini é ministro titular efetivo ou interino. Ressalva relacionada: a L14.407/2022 foi assinada por um substituto, o que mostra que assinatura não prova titularidade.
7. Contas do MEC de 2020, 2021 e 2025: acórdãos não localizados.

## Ressalvas metodológicas
- A rubrica registra a **presença de registro** e não mede qualidade nem adequação. Não há nota global.
- Nível de evidência desigual: Godoy e Barchini têm R3 a R5 apoiados em A/B porque seguiram carreira dentro da administração federal, que deixa rastro no TCU e no Inep. Ministros que vieram de universidades privadas ou da política estadual (Ribeiro, Camilo) dependem mais de fonte D. Isso reflete a acessibilidade das fontes, e não o perfil em si.
- A vinculação "Bianchini"/"Barchini" (TCU 2859/2009) foi inferida pelo CPF mascarado idêntico. Conferir no original.
- Durações calculadas em dias ÷ 30,44. Godoy contado desde a interinidade (29/03/2022). Os afastamentos de 1 a 2 dias de Camilo (retornos ao Senado) não foram descontados.
- O TCU 2371/2023 já está em GES-X18. Em GES2-B09 aparece só como contexto do perfil, sem dupla contagem.
