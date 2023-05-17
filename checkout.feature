#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
Dado que estou na tela de cadastro da EBAC-SHOP

Cenário: Cadastro Válido
Quando todos os campos obrigatórios com astericos estiverem preenchidos
E eu consiga concluir o cadastro
Então será possivel finalizar minha compra

Cenário: e-mail cadastrado inválido
Quando o e-mail for preenchido incorretamente
E tentar concluir o cadastro
Então exibir mensagem de erro "Endereço de e-mail invalido"

Cenário: Campos obrigatorios em branco
Quando deixar de preencher campos obrigatorios
E tentar concluir o cadastro
Então exibir mensagem de alerta "Esqueceu-se de preencher todos os campos obrigatórios"

Esquema do Cenário: validar multiplos usuarios
Quando eu inserir <usuario> e <senha>
Então deve exibir uma <mensagem> mensagem na tela

Exemplos:
|usuário|senha|mensagem|
|vazio|"123@123"|"Esqueceu-se de preencher todos os campos obrigatórios"|
|"josedasilva*ebac.com"|123@123|"endereço de e-mail invalido"|
|"josedasilva@ebac.com.br"|"123@123"|"cadastro concluido com sucesso|"

