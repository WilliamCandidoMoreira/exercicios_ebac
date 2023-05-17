#langauge: pt

Funcionalidade: Configurar produto.
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a de produtos da portal EBAC SHOP

Cenário: Criterios de escolha do produto
Quando Selecionar um produto
E escolher o tamanho
E a cor do produto
Então deve adicionar o produto carrinho de compras.

Cenário: Permitir apenas 10 produtos 
Quando a quantidade de itens escolhidos chegar a 10 itens
Então deve aparecer mensagem de alerta "limite máximo de produtos atingido"

Cenário: Permitir limpar carrinho de compras.
Quando eu clicar no icone limpar
Então deve limpar excluir os critérios de escolha do produto


