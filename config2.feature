#langauge: pt

Funcionalidade: Configurar produto.
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Criterios de Aceitação
1 Seleções de cor, tamanho e quantidade devem ser obrigatórios
2 Deve permitir apenas 10 produtos por venda
3 Quando eu clicar no botão “limpar” deve voltar ao estado original


Contexto:
Dado que eu estou na página de produtos da portal EBAC SHOP

Cenário: cor, tamanho e quantidade devem ser obrigatórios
Quando  Eu selecionar um produto e tenta clicar no icone comprar
Então  O ícone fica bloqueado e o sistema exibi mesnagem de alerta, "Selecione, tamanho, quantidade e cor para efetuar a compra"

Cenário: Permitir apenas 10 produtos 
Quando a quantidade de itens escolhidos chegar a 10
Então deve aparecer mensagem de alerta "limite máximo de produtos atingido"

Cenário: Permitir  clicar no ícnone limpar 
Quando eu seleciono a cor do produto e o tamanho e a sua cor e clico no botão limpar
Então o sistema deve retonar os campos, cor, tamanho e quantidade ao estado original


