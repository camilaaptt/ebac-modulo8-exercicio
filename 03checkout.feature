            #language: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Critérios de Aceitação:
            1. Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            2. Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            3. Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.

            Contexto:
            Dado que estou na tela de checkout

            Cenário: Validar cadastro com campos obrigatórios preenchidos com dados válidos
            Quando preencho os campos com asterístico com dados válidos
            Então o sistema deverá finalizar minha compra

            Cenário: Validar cadastro de e-mail com formato inválido
            Quando preencho o campo de e-mail com formato inválido
            Então o sistema deverá exibir uma mensagem de erro "O endereço de e-mail está em formato inválido."

            Esquema do Cenário: Validar cadastro com campos vazios
            Quando preencho o cadastro com <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <telefone> e <email>
            Então o sistema deverá exibir uma mensagem de <alerta>

            Exemplos:
            | nome  | sobrenome | pais   | endereco       | cidade         | cep      | telefone | email                | alerta                                  |
            | null  | Silva     | Brasil | Avenida Brasil | Rio de Janeiro | 12345789 | 99991122 | maria.silva@ebac.com | "O campo Nome não pode ser vazio."      |
            | Maria | null      | Brasil | Avenida Brasil | Rio de Janeiro | 12345789 | 99991122 | maria.silva@ebac.com | "O campo Sobrenome não pode ser vazio." |
            | Maria | Silva     | null   | Avenida Brasil | Rio de Janeiro | 12345789 | 99991122 | maria.silva@ebac.com | "O campo País não pode ser vazio."      |
            | Maria | Silva     | Brasil | null           | Rio de Janeiro | 12345789 | 99991122 | maria.silva@ebac.com | "O campo Endereço não pode ser vazio."  |
            | Maria | Silva     | Brasil | Avenida Brasil | null           | 12345789 | 99991122 | maria.silva@ebac.com | "O campo Cidade não pode ser vazio."    |
            | Maria | Silva     | Brasil | Avenida Brasil | Rio de Janeiro | null     | 99991122 | maria.silva@ebac.com | "O campo CEP não pode ser vazio."       |
            | Maria | Silva     | Brasil | Avenida Brasil | Rio de Janeiro | 12345789 | null     | maria.silva@ebac.com | "O campo Telefone não pode ser vazio."  |
            | Maria | Silva     | Brasil | Avenida Brasil | Rio de Janeiro | 12345789 | 99991122 | null                 | "O campo E-mail não pode ser vazio."    |