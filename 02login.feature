#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Critérios de Aceitação:
1. Ao inserir dados válidos deve ser direcionado para a tela de checkout
2. Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

Contexto:
Dado que eu acesse a página de autenticação da plataforma

Cenário: Validar login com dados válidos
Quando eu inserir login "aluno-ebac@gmail.com"
E senha "aluno@123"
Então devo ser direcionado para a tela de checkout

Cenário: Validar login com um dos campos com dados inválidos
Quando eu inserir um dos campos com dados inválidos
Então deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
