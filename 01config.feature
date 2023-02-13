#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Critérios de Aceitação:
1. Seleções de cor, tamanho e quantidade devem ser obrigatórios
2. Deve permitir apenas 10 produtos por venda
3. Quando eu clicar no botão “limpar” deve voltar ao estado original

Contexto:
Dado que estou na tela de produtos

Cenário: Validar seleção de todas as condições obrigatórias
Quando seleciono uma cor, tamanho e quantidade
E clico no botão comprar
Então o produto deve ser inserido no carrinho

Cenário: Validar seleção de apenas duas condições obrigatórias
Quando seleciono uma cor, tamanho
Mas não informo a quantidade
E clico no botão comprar
Então deve exibir uma mensagem abaixo do campo não preenchido "Item de seleção obrigatória"
E o produto não deve ser inserido no carrinho

Cenário: Validar compra com 10 produtos
Quando seleciono a quantidade de 10 unidades de um produto
Então o produto deve ser inserido no carrinho

Cenário: Validar compra com acima de 10 produtos
Quando seleciono a quantidade de 11 unidades de um produto
Então o produto não deve ser inserido no carrinho
E o sistema deve exibir a mensagem "Não é permitida a compra acima de dez produtos."

Cenário: Validar botão "limpar"
Quando preencho todas as informações obrigratórias de um produto
E clico em "limpar"
Então todos os campos preenchidos deverão voltar ao seu estado inicial