Feature: Feature name

    Para que eu possa manter meu carrinho apenas com itens desejados
    Sendo um cliente que desistiu de um ou mais produtos
    Posso remover itens do meu carrinho


    Scenario: Remover 1 item

        Given que eu tenho itens no carrinho:
            | nome          | preco    |
            | Cup Cake      | R$ 8,70  |
            | Donut         | R$ 2,50  |
            | Pão artesanal | R$ 15.90 |
        When eu removo somente o item 1
        Then o valor total deve ser de "R$ 18,40"


     Scenario: Remover todos os itens

        Given que eu tenho itens no carrinho:
            | nome          | preco    |
            | Cup Cake      | R$ 8,70  |
            | Donut         | R$ 2,50  |
            | Pão artesanal | R$ 15.90 |
        When eu removo todos os itens
        Then vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"