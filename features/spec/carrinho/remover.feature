@bread_bakery
Feature: Feature name

    Para que eu possa manter meu carrinho apenas com itens desejados
    Sendo um cliente que desistiu de um ou mais produtos
    Posso remover itens do meu carrinho

    Background: Itens no carrinho
        Given que eu tenho itens no carrinho:
            | nome          | preco    | quantidade |
            | Cup Cake      | R$ 8,70  | 1          |
            | Donut         | R$ 2,50  | 1          |
            | Pão artesanal | R$ 15.90 | 1          |

    Scenario: Remover 1 item

        When eu removo somente o item 0
        Then o valor total deve ser de "R$ 18,40"

    Scenario Outline: Remover item

        When eu removo somente o item <item>
        Then o valor total deve ser de <total>

        Examples:
            | item | total      |
            | 0    | "R$ 18,40" |
            | 1    | "R$ 24,60" |
            | 2    | "R$ 11,20" |

    Scenario: Remover todos os itens

        When eu removo todos os itens
        Then vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"

    @temp
    Scenario: Limpar carrinho

        When eu limpo o meu carrinho
        Then vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"
