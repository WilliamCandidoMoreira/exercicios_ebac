#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação do portal EBAC-SHOP

Cenário: Autenticação válida
Quando eu digitar o usuario "josedasilva@ebac.com.br"
E a senha "jose@123"
Então deve direcionar para página de checkout

Cenário: usuário inválido
Quando eu digitar o usuario "jose-dasilva@ebac.com.br"
E a senha "jose@123"
Então deve exibir mensagem de alerta "Usuario ou senha inválidos"

Cenário: usuário inválido
Quando eu digitar o usuario "josedasilva@ebac.com.br"
E a senha "jose@1234"
Então deve exibir mensagem de alerta "Usuario ou senha inválidos"

Esquema do Cenário: Válidar autenticação inválidas
Quando eu inserir <usuario> e <senha>
Então deve exibir uma <mensagem> de erro

Exemplos:
|usuário|senha|mensagem|
|"jose-dasilva@ebac.com.br"|"jose@123"|"Usuario ou senha inválidos"|
|"josedasilva@ebac.com.br"|"jose@1234"|"Usuario ou senha inválidos"|

