# Modelo de Dados

## Contexto

A Ciclo Commerce é uma empresa fictícia de varejo com operação em três canais:

1. E commerce
2. Loja física
3. Marketplace

O projeto simula uma arquitetura analítica voltada para vendas, comportamento de clientes, marketing, estoque e qualidade de dados.

## Objetivo analítico

A base deve permitir responder perguntas como:

1. Qual é a receita por período, produto, categoria e canal?
2. Quais clientes compram novamente?
3. Quais clientes ficaram inativos?
4. Quais campanhas geram mais conversão?
5. Em que etapa do funil os clientes abandonam a compra?
6. Quais produtos são comprados juntos?
7. Existem pedidos, pagamentos ou estoques com comportamento anormal?
8. Quais temas aparecem nas avaliações dos clientes?

## Entidades de origem

### Clientes

Representa cada cliente cadastrado na operação.

Granularidade:

Uma linha por cliente na origem.

Chave de negócio:

cliente_id_origem

Principais usos:

1. Perfil de clientes
2. Coortes
3. Retenção
4. Recompra
5. Inatividade
6. Duplicidade e qualidade de cadastro

### Categorias

Representa a classificação comercial dos produtos.

Granularidade:

Uma linha por categoria.

Chave de negócio:

categoria_id_origem

Principais usos:

1. Receita por categoria
2. Ranking de categorias
3. Cesta de compras
4. Análise de mix de produtos

### Produtos

Representa o catálogo de itens comercializados.

Granularidade:

Uma linha por produto.

Chave de negócio:

produto_id_origem

Principais usos:

1. Receita por produto
2. Margem estimada
3. Estoque
4. Produtos sem venda
5. Produtos mais comprados juntos

### Pedidos

Representa cada pedido realizado por um cliente.

Granularidade:

Uma linha por pedido.

Chave de negócio:

pedido_id_origem

Principais usos:

1. Receita
2. Ticket médio
3. Séries temporais
4. Coortes
5. Campanhas
6. Anomalias
7. Inatividade

### Itens de pedido

Representa cada produto vendido dentro de um pedido.

Granularidade:

Uma linha por produto dentro de um pedido.

Chave de negócio:

item_pedido_id_origem

Principais usos:

1. Receita por produto
2. Quantidade vendida
3. Margem
4. Cesta de compras
5. Produtos sem venda
6. Ranking de produtos

### Pagamentos

Representa cada tentativa ou transação de pagamento associada a um pedido.

Granularidade:

Uma linha por transação de pagamento.

Chave de negócio:

pagamento_id_origem

Principais usos:

1. Conciliação financeira
2. Divergência entre pedido e pagamento
3. Taxa de aprovação
4. Método de pagamento
5. Anomalias financeiras

### Movimentos de estoque

Representa entradas, saídas, ajustes, devoluções e inventários de estoque.

Granularidade:

Uma linha por movimentação de produto.

Chave de negócio:

movimento_estoque_id_origem

Principais usos:

1. Saldo de estoque
2. Giro de produto
3. Estoque negativo
4. Anomalias de movimentação
5. Relação entre venda e disponibilidade

### Campanhas

Representa campanhas de marketing e grupos de experimento.

Granularidade:

Uma linha por campanha.

Chave de negócio:

campanha_id_origem

Principais usos:

1. Receita por campanha
2. Conversão
3. Teste A B
4. Comparação entre variantes
5. Análise pré e pós campanha

### Eventos do site

Representa interações de usuários no ambiente digital.

Granularidade:

Uma linha por evento realizado.

Chave de negócio:

evento_id_origem

Principais usos:

1. Funil de compra
2. Abandono de carrinho
3. Conversão
4. Jornada do cliente
5. Análise experimental

### Avaliações de clientes

Representa avaliações e comentários associados a pedidos ou produtos.

Granularidade:

Uma linha por avaliação enviada.

Chave de negócio:

avaliacao_id_origem

Principais usos:

1. Análise de texto
2. Classificação de temas
3. Identificação de reclamações
4. Relação entre nota e experiência de compra

## Relacionamentos principais

```text
clientes
    1 para N
pedidos

pedidos
    1 para N
itens_pedido

produtos
    1 para N
itens_pedido

categorias
    1 para N
produtos

pedidos
    1 para N
pagamentos

produtos
    1 para N
movimentos_estoque

campanhas
    1 para N
pedidos

campanhas
    1 para N
eventos_site

clientes
    1 para N
eventos_site

clientes
    1 para N
avaliacoes_clientes

pedidos
    1 para N
avaliacoes_clientes

produtos
    1 para N
avaliacoes_clientes