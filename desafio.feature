            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Contexto:
            Dado que eu acesse a calculadora

            Cenário: Soma de 2 números
            Quando eu somar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenário: Soma de 2 números
            Quando eu somar <valor1> + <valor2>
            Então o resultado deve ser <total>

            Exemplos:
            | valor1 | valor2 | total |
            | 1      | 1      | 2     |
            | 2      | 3      | 5     |
            | 3      | 5      | 8     |
            | 5      | 8      | 13    |
            | 8      | 13     | 21    |
            | 13     | 21     | 34    |
            | 21     | 34     | 55    |
            | 34     | 55     | 89    |
            | 55     | 89     | 144   |
            | 89     | 144    | 233   |
            | 144    | 233    | 377   |
            | 233    | 377    | 610   |
            | 377    | 610    | 987   |
            | -10    | 39     | 29    |
            | 55     | 0      | 55    |
            | -3     | -5     | -8    |
            | -10    | -65    | -75   |
            | 0      | 98     | 98    |
            | 0      | 0      | 0     |
            | 100    | 100    | 200   |