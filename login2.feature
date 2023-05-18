            #language: pt

Funcionalidade: Tela de login
 Como cliente da EBAC-SHOP
 Quero fazer o login (autenticação) na plataforma
 Para visualizar meus pedidos

 Critérios de Aceitação:
 1 Ao inserir dados válidos deve ser direcionado para a tela de checkout
 2 Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”


 Contexto:
 Dado que eu estou na página de login do portal EBAC-SHOP

 Esquema do Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
 Quando eu inserir <usuario> e <senha> e clicar no icone de login
 Então o login não é realizado e é exibido a mensagem de alerta "Usuário ou senha inválidos"

 Exemplos:
 | usuário                    | senha       | mensagem                     |
 | "jose-dasilva@ebac.com.br" | "jose@123"  | "Usuario ou senha inválidos" |
 | "josedasilva@ebac.com.br"  | "jose@1234" | "Usuario ou senha inválidos" |

 Esquema do Cenário: Ao inserir dados válidos deve ser direcionado pra tela de checkout
 Quando eu inserir <usuario> e <senha> e clicar no icone de login
 Então o login é realizado com sucesso e apresenta a tela de checkout

 Exemplos:
 | usuário                     | senha         |
 | "josedasilva@ebac.com.br"   | "jose@123"    |
 | "usuariovalido@ebac.com.br" | "senhavalida" |


