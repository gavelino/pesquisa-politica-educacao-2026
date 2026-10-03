# IMP3: resultados (D6) e camada Flávio (QP6) em imprensa de referência (protocolo v1.1)

Coleta feita em 03/10/2026 com WebFetch. São 43 fontes de nível D (IMP3-001 a IMP3-043) e 41 linhas em `extracoes/IMP3.csv`. As URLs estão em `fontes/urls_IMP3.tsv`, com 4 URLs não lidas (IMP3-NL01 a NL04).

**Regras aplicadas (v1.1 §13):**
- Número exige pelo menos 2 veículos independentes. O mesmo veículo em várias matérias conta como 1.
- Texto da Agência Brasil republicado pela CNN conta como Agência Brasil.
- Imprensa não substitui A/B em indicadores. Por isso todo indicador aqui fica `nao_confirmado`, mesmo com 2 veículos.
- Os fatos simples da camada Flávio ficam `implementada` (= fato confirmado em imprensa) quando há A em FLA.

**Convenção de grupo:** o ano de referência do dado define o grupo (2019–2022 = B; 2023+ = A). As séries que cobrem os dois períodos usam `ambos`, fora do vocabulário A|B|Flavio do CSV. A mesma solução foi adotada em RES (`linha_base`).

---

## 1. D6 Resultados: frases prontas (sem atribuição causal)

### Ideb (total Brasil)

| Ano (grupo) | Anos iniciais | Anos finais | Ensino médio | Veículos |
|---|---|---|---|---|
| 2017 (base) | 5,8 | 4,7 | 3,8 | Agência Brasil |
| 2019 (B) | 5,9 (meta 5,7) | 4,9 (meta 5,2) | 4,2 (meta 5,0) | Agência Brasil (1 veículo) |
| 2021 (B) | 5,8 (meta 6,0) | 5,1 (meta 5,5) | 4,2 (meta 5,2) | AI e AF: Agência Brasil + Poder360; EM: só Agência Brasil |
| 2023 (A) | 6,0 | 5,0 | 4,3 | Agência Brasil, Poder360, Gazeta |
| 2025 (A) | 6,3 (meta 6,0) | 5,3 (meta 5,5) | 4,5 (meta 5,2) | Agência Brasil, Poder360, Gazeta |

**Ideb 2019 (B).**
- Frase: "No Ideb 2019, divulgado em 15/09/2020, o Brasil registrou 5,9 nos anos iniciais (meta de 5,7 cumprida), 4,9 nos anos finais e 4,2 no ensino médio (metas de 5,2 e 5,0 não cumpridas). A alta de 0,4 no ensino médio foi a maior da série" (imprensa).
- Fontes: [Agência Brasil, 15/09/2020](https://agenciabrasil.ebc.com.br/educacao/noticia/2020-09/brasil-avanca-no-ideb-mas-apenas-ensino-fundamental-cumpre-meta); [Agência Brasil, 15/09/2020](https://agenciabrasil.ebc.com.br/educacao/noticia/2020-09/ensino-medio-tem-maior-salto-de-qualidade-desde-2005).
- Rede pública: 5,7 / 4,6 / 3,9.
- Falta um 2º veículo independente.

**Ideb 2021 (B).**
- Frase: "No Ideb 2021, divulgado em 16/09/2022, o Brasil registrou 5,8 nos anos iniciais, 5,1 nos anos finais e 4,2 no ensino médio. Nenhuma etapa atingiu a meta. Com a pandemia, a taxa de aprovação foi flexibilizada, o que elevou o componente de fluxo" (imprensa).
- Fontes: [Agência Brasil, 16/09/2022](https://agenciabrasil.ebc.com.br/educacao/noticia/2022-09/em-meio-pandemia-aprendizagem-cai-nas-escolas-do-pais) (lida em RES2-010); [Poder360, 14/08/2024](https://www.poder360.com.br/brasil/educacao-inicial-tem-melhora-mas-anos-finais-nao-alcancam-meta-do-mec/); [Agência Brasil, 14/08/2024](https://agenciabrasil.ebc.com.br/educacao/noticia/2024-08/ideb-cresce-e-mostra-aumento-da-qualidade-da-educacao-basica).

**Ideb 2023 (A).**
- Frase: "No Ideb 2023, o Brasil registrou 6,0 nos anos iniciais (meta cumprida), 5,0 nos anos finais (meta 5,5) e 4,3 no ensino médio (meta 5,2)" (imprensa).
- Fontes: [Poder360, 14/08/2024](https://www.poder360.com.br/brasil/educacao-inicial-tem-melhora-mas-anos-finais-nao-alcancam-meta-do-mec/); [Agência Brasil, 14/08/2024](https://agenciabrasil.ebc.com.br/educacao/noticia/2024-08/ideb-cresce-e-mostra-aumento-da-qualidade-da-educacao-basica).

**Ideb 2025 (A).**
- Frase: "No Ideb 2025, divulgado em 05/08/2026, o Brasil registrou 6,3, 5,3 e 4,5, os maiores valores da série iniciada em 2005. Só os anos iniciais atingiram a meta" (imprensa).
- Fontes: [Agência Brasil](https://agenciabrasil.ebc.com.br/educacao/noticia/2026-08/ideb-mostra-avanco-da-educacao-basica-no-pais); [Poder360](https://www.poder360.com.br/poder-educacao/ideb-registra-melhora-no-ensino-fundamental-e-medio-em-2025/); [Gazeta do Povo](https://www.gazetadopovo.com.br/educacao/ideb-escolas-encerram-2025-sem-atingir-metas-previstas-2021/), todas de 05/08/2026.
- Rede pública 2023 → 2025: 5,7 → 6,1; 4,7 → 5,0; 4,1 → 4,3.

**Aprovação e Ideb.**
- Frase: "A Gazeta do Povo relaciona a alta do Ideb à aprovação na rede pública. No ensino médio, a aprovação foi de 84,7% (2019), 89,8% (2021), 90,5% (2023) e 94,3% (2025)."
- Fonte: [Gazeta do Povo, 06/08/2026](https://www.gazetadopovo.com.br/educacao/ideb-melhora-mas-avanco-e-puxado-pela-alta-aprovacao-nas-escolas/).
- Só 1 veículo. A ordem dos valores de 2019 deve ser conferida na matéria.

### Saeb e queda na pandemia (B), com recuperação (A)
- **Frase (B):** "Entre 2019 e 2021, a proficiência média caiu em todas as etapas avaliadas: no 5º ano, de 227,9 para 216,9 em matemática e de 214,6 para 208,1 em português; no ensino médio, de 277,3 para 269,7 em matemática" (imprensa).
  - Fontes: [Poder360, 14/08/2024](https://www.poder360.com.br/brasil/educacao-inicial-tem-melhora-mas-anos-finais-nao-alcancam-meta-do-mec/); [Agência Brasil, 16/09/2022](https://agenciabrasil.ebc.com.br/educacao/noticia/2022-09/em-meio-pandemia-aprendizagem-cai-nas-escolas-do-pais) (valores arredondados e consistentes).
  - 2 veículos.
- **Frase (A):** "Em 2023, os valores ficaram entre os de 2021 e 2019, por exemplo 224,8 em matemática no 5º ano. Em 2025, a matemática do ensino médio chegou a 276,5, ainda abaixo de 2019 (277,3), e o português a 279,0" (imprensa).
  - Fontes: [Poder360, 14/08/2024](https://www.poder360.com.br/brasil/educacao-inicial-tem-melhora-mas-anos-finais-nao-alcancam-meta-do-mec/); [Poder360, 05/08/2026](https://www.poder360.com.br/poder-educacao/nota-em-matematica-no-ensino-medio-ainda-nao-voltou-ao-pre-pandemia/).
  - Só 1 veículo.

### PISA
- **2022 (aplicado no período B, divulgado em 05/12/2023):**
  - Frase: "No PISA 2022, o Brasil teve 379 pontos em matemática (384 em 2018; média OCDE 472)."
  - Fontes: [Poder360, 05/12/2023](https://www.poder360.com.br/educacao/brasil-esta-entre-os-17-paises-com-pior-nota-em-matematica-da-ocde/); [CNN Brasil, 08/09/2026](https://www.cnnbrasil.com.br/educacao/pisa-2025-brasil-esta-abaixo-de-media-mundial-em-aprendizado/).
  - Leitura 410 e ciências 403: CNN, e ciências também na Agência Brasil (RES2-007). Leitura tem 1 só veículo.
  - **Divergência:** o Poder360 publica "intervalos" de 399–407 (leitura) e 406–414 (ciências), que não contêm 410 e 403.
- **2025 (A):**
  - Frase: "No PISA 2025, o Brasil teve 377 em matemática, 408 em leitura e 409 em ciências. Os valores são semelhantes aos de 2022, e o de ciências é o maior da série do Inep" (imprensa).
  - Fontes: [CNN Brasil, 08/09/2026](https://www.cnnbrasil.com.br/educacao/pisa-2025-brasil-esta-abaixo-de-media-mundial-em-aprendizado/); [Poder360, 08/09/2026](https://www.poder360.com.br/poder-educacao/educacao-no-brasil-avanca-mas-segue-distante-da-media-da-ocde/).
  - Média OCDE de leitura: 463 na CNN e 461 em RES/Inep.
- **Contexto (discurso, não é ação):** o ministro Camilo Santana atribuiu a estabilidade ao "empenho de governadores e prefeitos" e citou "ausência do MEC" no período anterior ([Poder360, 05/12/2023](https://www.poder360.com.br/educacao/resultado-do-pisa-reflete-esforco-coletivo-na-pandemia-diz-camilo/)).

### Alfabetização
- **ICA (A):**
  - Frase: "O Indicador Criança Alfabetizada foi de 56% em 2023, 59,2% em 2024 (meta de 60% não atingida) e 66% em 2025 (meta de 64% superada)" (imprensa).
  - Fontes: [CNN Brasil, 13/08/2025](https://www.cnnbrasil.com.br/educacao/inep-divulga-microdados-do-indicador-crianca-alfabetizada/); [Poder360, 23/03/2026](https://www.poder360.com.br/poder-educacao/brasil-supera-meta-de-alfabetizacao-de-criancas-em-2025/); [Agência Brasil via CNN, 23/03/2026](https://www.cnnbrasil.com.br/educacao/brasil-atinge-meta-com-66-das-criancas-alfabetizadas-em-idade-certa/).
- **Série com os dois governos (Saeb amostral, medida diferente do ICA):**
  - Frase: "Pelo Saeb do 2º ano, a taxa de alfabetização foi de 60,3% (2019), cerca de 43,6% (2021) e 49,3% (2023)" (imprensa).
  - Fonte: [Agência Brasil, 04/04/2025](https://agenciabrasil.ebc.com.br/educacao/noticia/2025-04/taxa-de-alfabetizacao-era-de-493-no-brasil-em-2023-diz-inep).
  - Só 1 veículo. O valor de 2021 foi derivado.
  - Não comparar com o ICA.
- **Lei 15.247/2025:**
  - Frase: "Origem no PL 4.937/2024, da Comissão de Educação do Senado. Sancionada em 31/10/2025" ([Agência Senado, 04/11/2025](https://www12.senado.leg.br/noticias/materias/2025/11/04/compromisso-nacional-pela-alfabetizacao-na-idade-certa-agora-e-lei)).
  - Resolve a origem pendente em RES-C004.

### Fechamento de escolas
- Não há número de dias com fonte OCDE/Unesco em veículo acessível.
- Só uma afirmação qualitativa feita em debate: "o Brasil foi o país que manteve as escolas fechadas por mais tempo" ([Agência Senado, 06/12/2021](https://www12.senado.leg.br/noticias/materias/2021/12/06/recuperacao-dos-prejuizos-na-educacao-por-conta-da-pandemia-sera-lenta-conclui-debate)).
- O fechamento foi decidido por redes estaduais e municipais. Não atribuir ao Executivo federal.

### Censo Escolar: tempo integral e matrículas
- **Total de matrículas:**
  - Frase: "As matrículas em tempo integral eram 14,9% do total em 2019, 18,5% em 2022 e 21% em 2023 (9,9 milhões)" (imprensa).
  - Fonte: [Poder360, 22/02/2024](https://www.poder360.com.br/educacao/um-em-cada-5-alunos-estuda-em-tempo-integral-diz-censo-escolar/).
  - Só 1 veículo.
- **Rede pública:**
  - Frase: "Na rede pública, as matrículas em tempo integral foram de 18,2% (2022), 22,9% (2024) e 26,6% (2025), o maior percentual registrado segundo o Inep" (imprensa).
  - Fontes: [Agência Senado, 10/04/2025](https://www12.senado.leg.br/noticias/audios/2025/04/dados-do-censo-escolar-sobre-ensino-integral-podem-subsidiar-novo-pne); [Agência Senado, 18/08/2026](https://www12.senado.leg.br/noticias/materias/2026/08/18/debate-na-ce-aponta-avanco-de-tempo-integral-e-desafios-para-garantir-qualidade).
  - O diretor do Inep citou alta de 13 p.p. em 10 anos, "mais consistente a partir de 2021".
- **Matrículas totais na educação básica:**
  - Valores: 47,3 mi (2020; 579 mil a menos que em 2019), 47,3 mi (2023), 47.088.922 (2024) e 46.018.380 (2025).
  - Fontes: [Agência Brasil, 29/01/2021](https://agenciabrasil.ebc.com.br/educacao/noticia/2021-01/censo-escolar-2020-aponta-reducao-de-matriculas-no-ensino-basico); [Poder360, 26/02/2026](https://www.poder360.com.br/poder-educacao/brasil-tem-queda-de-1-milhao-de-alunos-na-educacao-basica-diz-censo/).

### Censo da Educação Superior
- **2019 (B):**
  - Frase: "8,6 milhões de matrículas (8,4 mi em 2018) e 3,6 milhões de ingressantes. A rede privada tinha 76% das matrículas."
  - Fontes: [Agência Brasil, 23/10/2020](https://agenciabrasil.ebc.com.br/educacao/noticia/2020-10/censo-mostra-que-ensino-distancia-ganha-espaco-no-ensino-superior); [Agência Senado, 26/10/2020](https://www12.senado.leg.br/noticias/audios/2020/10/cada-vez-mais-alunos-optam-pelo-ensino-a-distancia-no-ensino-superior). Os 76% aparecem nos 2 veículos.
- **2022 (B):** cerca de 7,3 mi na rede privada (~78%), valor "estimado" ([Agência Senado, 09/09/2024](https://www12.senado.leg.br/noticias/materias/2024/09/09/pne-especialistas-debatem-evasao-ia-e-autonomia-financeira-para-universidades-publicas)).
- **2023 (A):** 9,9 mi, com 79,3% na rede privada ([Poder360, 14/09/2025](https://www.poder360.com.br/poder-educacao/brasil-tem-maior-numero-de-aluno-por-professor-em-faculdades-privadas/)).
- **2024 (A):** 10,23 mi, com 2,06 mi na rede pública (20,2%). O EaD passou a ser 50,74% das matrículas ([Poder360, 23/09/2025](https://www.poder360.com.br/poder-educacao/ensino-a-distancia-supera-o-presencial-pela-1a-vez-na-graduacao/)).
- **Rede federal:** só foi localizado o número de ingressantes cotistas, 133.078 em 2024 (mais de 1,4 mi entre 2013 e 2024) ([Poder360, 19/04/2026](https://www.poder360.com.br/poder-educacao/censo-conclusao-da-graduacao-nas-federais-e-maior-entre-cotistas/)).

## 2. QP6: Flávio Bolsonaro e educação (só fatos de ato parlamentar)
- **PLP 135/2020 (FNDCT):**
  - Frase: "O Senado aprovou em 13/08/2020, por 71 votos a 1, o PLP 135/2020, que proíbe contingenciar o FNDCT" ([Agência Senado](https://www12.senado.leg.br/noticias/materias/2020/08/13/senado-aprova-projeto-que-fortalece-fundo-cientifico-e-tecnologico-texto-vai-a-camara)).
  - O registro nominal (A, FLA-018) mostra que o único "não" foi de Flávio, com orientação "sim" do governo.
  - **Nenhum veículo acessível nomeia o voto contrário.**
  - Os vetos à LC 177/2021 foram derrubados em 17/03/2021, em votação em globo ([Agência Senado](https://www12.senado.leg.br/noticias/materias/2021/03/17/derrubados-vetos-relacionados-a-fundos-de-energia-telecomunicacoes-e-inovacao-tecnologica)).
- **Lei de Cotas (2023):**
  - Frase: "Flávio apresentou emenda que substituía o projeto por cotas de 50% apenas por renda (≤1,5 salário mínimo per capita), sem critério racial e sem exigir ensino médio em escola pública. A preferência para a emenda foi rejeitada por 46 a 24 em 24/10/2023, e ele votou contra o projeto aprovado. Em Plenário, citou relatório do TCU segundo o qual as instituições 'não têm o acompanhamento de desempenho dos cotistas'."
  - Fontes: [Agência Senado, 24/10/2023](https://www12.senado.leg.br/noticias/materias/2023/10/24/senado-aprova-atualizacao-da-lei-de-cotas); [Agência Senado, 18/10/2023](https://www12.senado.leg.br/noticias/materias/2023/10/18/projeto-que-reformula-lei-de-cotas-vai-a-plenario).
  - Só 1 veículo. A matéria do Poder360 do mesmo dia não menciona o fato.
- **PL 2.170/2019:**
  - Frase: "Projeto de Flávio inclui Educação Moral e Cívica, OSPB, empreendedorismo e matemática financeira como temas transversais obrigatórios a partir do 6º ano. A justificação fala em 'ideal de segurança nacional' e em 'patriotismo e amor à pátria'. Não virou lei."
  - Fontes: [Agência Senado, 17/09/2020](https://www12.senado.leg.br/noticias/materias/2020/09/17/simbolos-nacionais-representam-a-identidade-de-uma-nacao-diz-consultor); [Agência Senado, 24/01/2022](https://www12.senado.leg.br/noticias/materias/2022/01/24/comissao-de-educacao-comeca-o-ano-com-59-projetos-prontos-para-votacao).
  - Em jan/2022 a relatora era Mailza Gomes, enquanto FLA registra Wellington Fagundes. Conferir.
- **Segurança escolar (achado novo):** Flávio foi relator, na CSP, de 2 projetos:
  - PL 1.678/2023, que qualifica o homicídio em escola ou perto dela, com pena de 12 a 30 anos ([Agência Senado, 26/11/2024](https://www12.senado.leg.br/noticias/materias/2024/11/26/aumento-de-pena-para-crime-cometido-em-escola-avanca));
  - PL 1.795/2023, que obriga alarme conectado à polícia nas escolas e altera a LDB ([Agência Senado, 10/12/2024](https://www12.senado.leg.br/noticias/materias/2024/12/10/csp-aprova-obrigacao-de-alarme-conectado-com-a-policia-nas-escolas)).
  - Os dois foram aprovados na CSP, sem lei até a data das matérias.
- **Escolas cívico-militares:**
  - Nenhuma declaração ou ato de Flávio coberto pela imprensa. O único ato continua sendo o RQS 672/2023 (A).
  - Para simetria: Lula declarou em 14/04/2026 que a educação pública "não precisa... de uma escola cívico-militar" ([Poder360](https://www.poder360.com.br/poder-governo/lula-diz-que-brasil-nao-precisa-de-escola-civico-militar/)).
- **Planos de governo 2026:** são propostas e ficam fora do critério. O de Flávio foi registrado no TSE em 13/08/2026 e o de Lula em 07/08/2026. Os dois incluem a expansão do ensino integral ([Poder360](https://www.poder360.com.br/poder-eleicoes-2026/eleicoes-2026-compare-os-planos-de-governo-de-lula-e-flavio/)).

## 3. O que foi buscado
- **Páginas de tag:**
  - Agência Brasil: ideb (p. 0–1), saeb, pisa, censo-escolar, censo-da-educacao-superior, ocde (p. 5 e 8), inep (p. 40);
  - Poder360: ideb, saeb, pisa (p. 1–2), alfabetizacao, censo-escolar (p. 1–2), censo-da-educacao-superior, ensino-superior, escola-em-tempo-integral, escolas-civico-militares, fndct, lei-de-cotas (p. 3), plano-de-governo, educacao, ocde, unesco, flavio-bolsonaro;
  - CNN: pisa, alfabetizacao, inep, unesco, ocde, ensino-superior, flavio-bolsonaro;
  - Gazeta: ideb.
- **Busca da Agência Senado:** Ideb (3 páginas), "Ideb 2021", "Pisa 2022", "Criança Alfabetizada", escolas fechadas OCDE, "178 dias", tempo integral, Censo Superior, FNDCT/PLP 135, cotas Flávio, Educação Moral e Cívica, Flávio + educação, Flávio + cívico-militar.
- **Simetria:** as mesmas buscas cobriram os anos dos dois governos. As assimetrias de cobertura (2019 com 1 veículo, 2023/2025 com 3) vêm do acesso: as tags antigas do Poder360 e da CNN não paginam.

## 4. Lacunas
1. Ideb 2019 (todas as etapas) e EM 2021: falta um 2º veículo independente da Agência Brasil.
2. PISA 2022, leitura: 1 veículo, e há divergência com o Poder360.
3. Dias de escola fechada (OCDE/Unesco): não localizado.
4. Tempo integral na rede pública em 2019–2021 e números absolutos por ano (só 2023 = 9,9 mi).
5. Censo Superior 2020–2022 (totais) e rede federal (matrículas e ingressantes): não localizados.
6. Flávio:
   - nenhuma notícia o nomeia como voto contrário no PLP 135;
   - nenhuma declaração pública sobre escolas cívico-militares;
   - o conteúdo de educação do plano de governo não foi transcrito.
7. **Não lidos por limite de requisições (HTTP 429 da Agência Brasil):**
   - tag inep p. 22 e p. 27, provável cobertura de set/2022 (Ideb 2021);
   - tag ocde p. 4, provável cobertura do Education at a Glance 2021.
   - O proxy pediu para não repetir. Ficam listados no TSV.

## 5. Ressalvas
- Tudo aqui é nível D. Os indicadores continuam dependendo de A (Inep). O IMP3 só substitui a Wikipedia como corroboração.
- Bases diferentes não devem ser misturadas:
  - tempo integral sobre o total × sobre a rede pública;
  - Saeb total × Saeb da rede pública (Gazeta);
  - ICA × taxa de alfabetização do Saeb amostral.
- Resultados têm defasagem (lag) e não indicam causa. O Ideb 2021 e o Saeb 2021 foram afetados pela pandemia (fluxo inflado, amostra reduzida).
- Trechos marcados "conforme extração" não são cópias palavra por palavra. Os números críticos (PISA no Poder360 e Censo Superior 2024) foram relidos com pedido de cópia literal.
