#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Criterios de aceitação:
1 Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos 
2 Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
3 Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 

Contexto:
Dado que estou na tela de checkout da EBAC-SHOP

Esquema do Cenário: Realizar cadastro quando todos os campos obrigatório são  preenchidos  corretamente
Quando eu preencho corretamenta todos os campos obrigatórios com astericos
Então é realizado meu cadastro para finalizar a compra

Exemplos:
| nome  | sobrenome | endereço | cidade          | cep          | telefone    | e-mail                   |
| jose  | da silva  | Brasil | Rua c    | Juiz de Fora    | 36032-060    | 3212345678  | josedasilva@ebac.com.br  |
| Luiz  | Ricardo   | Brasil | Rua d    | Juiz de Fora    | 36032-060045 | 32155872678 | luizricardoa@ebac.com.br |
| Maria | jose      | Brasil | Rua j    | Coronel Pacheco | 3632036-048  | 3217778237  | mariajosea@ebac.com.br   |

Cenário: Não deve permitir campo e-mail com formato inválido.
Quando o campo obrigatório e-mail for preenchido com o formato inválido 
E eu tento finalizar compra
Então O sistema não realiza meu cadastro e deve exibir mensagem de erro "Endereço de e-mail está incorreto"

Cenário: Não deve realizar cadastro com campos obrigatorios não preenchidos 
Quando eu não preencher campos obrigatorios e clicar no ícone finalizar compra
Então  meu cadastro não é finalizado e exibi mensagem de alerta "Campos obrigatórios não preenchidos"

Cenário:Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
Quando eu deixo campos de cadastro em branco e clico no ícone finalizar compra
Então o Sistema não realiza meu cadastro e exibi mensagem de alerta , "Por favor preencha este campo?" indicando qual campo está vazio.





