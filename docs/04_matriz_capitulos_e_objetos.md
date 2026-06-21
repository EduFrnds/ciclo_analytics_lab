# Matriz de Capítulos e Objetos

| Capítulo | Tema | Objetos principais | Aplicação prática |
|---|---|---|---|
| 1 | Análise com SQL | Documentação, schemas e fluxo de dados | Entender o papel do SQL na arquitetura |
| 2 | Preparação de dados | clientes, pedidos, produtos, pagamentos | Nulos, duplicidades, tipos, padronização e qualidade |
| 3 | Séries temporais | pedidos, itens_pedido, calendário | Receita mensal, variação, acumulado e sazonalidade |
| 4 | Coortes | clientes e pedidos | Retenção, recompra e sobrevivência |
| 5 | Análise de texto | avaliacoes_clientes | Limpeza, classificação, LIKE e expressões regulares |
| 6 | Detecção de anomalias | pedidos, pagamentos e movimentos_estoque | Outliers, ausência de dados e divergências |
| 7 | Análise experimental | campanhas, eventos_site e pedidos | Conversão, variantes, pré e pós campanha |
| 8 | Datasets complexos | stg e mart | CTEs, views, tabelas temporárias e conjuntos analíticos |
| 9 | Funil, inatividade e cesta | eventos_site, pedidos e itens_pedido | Funil, churn e produtos comprados juntos |

## Objetos e cobertura analítica

| Objeto | Camada inicial | Capítulos relacionados | Finalidade |
|---|---|---|---|
| raw.clientes | raw | 2, 4, 6, 9 | Cadastro, coortes, retenção e inatividade |
| raw.categorias | raw | 2, 3, 8, 9 | Classificação comercial |
| raw.produtos | raw | 2, 3, 6, 8, 9 | Catálogo, receita e estoque |
| raw.pedidos | raw | 2, 3, 4, 6, 7, 9 | Vendas, tempo, coortes, campanhas e inatividade |
| raw.itens_pedido | raw | 2, 3, 6, 8, 9 | Receita, mix e cesta de compras |
| raw.pagamentos | raw | 2, 6, 8 | Conciliação e divergências |
| raw.movimentos_estoque | raw | 2, 3, 6 | Giro, saldo e anomalias |
| raw.campanhas | raw | 2, 7, 8 | Campanhas e variantes de experimento |
| raw.eventos_site | raw | 2, 7, 9 | Funil e comportamento digital |
| raw.avaliacoes_clientes | raw | 2, 5, 6 | Texto, temas e qualidade |