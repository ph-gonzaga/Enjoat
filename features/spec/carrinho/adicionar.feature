@bread_bakery
Feature: Feature name

    Para que eu possa finalizar uma compra
    Sendo um cliente que já decidiu o que deseja comer
    Posso adicionar itens ao meu carrinho

    --------------------------------------------------------------------

    Sendo um cliente que já decidiu o que deseja comer
    Posso adicionar itens ao meu carrinho
    Para que eu possa finalizar uma compra

    Scenario: Adicionar uma unidade

        Given que o produto desejado é "Cup Cake"
        And o valor do produto é de "R$ 8,70"
        When eu adiciono 1 unidade(s)
        Then 1 unidade(s) deste item deve ser adicionado ao carrinho
        And o valor total deve ser de "R$ 8,70"


    Scenario: Adicionar duas unidades

        Given que o produto desejado é "Donut"
        And o valor do produto é de "R$ 2,50"
        When eu adiciono 2 unidade(s)
        Then 2 unidade(s) deste item devem ser adicionados ao carrinho
        And o valor total deve ser de "R$ 5,00"
        
    Scenario: Adicionar varios itens

        Given que o produto desejados são:
            | nome                   | preco    | quantidade |
            | Cup Cake               | R$ 8,70  | 1          |
            | Donut                  | R$ 2,50  | 2          |
            | Pão Artesanal Italiano | R$ 15.90 | 1          |
        When eu adiciono todos os itens
        Then vejo todos os itens no carrinho
        And o valor total deve ser de "R$ 29,60"