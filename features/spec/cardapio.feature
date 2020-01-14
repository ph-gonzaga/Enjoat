@cardapio
Feature: Cardapio

    Para que eu possa decidir o que pretendo comer
    Sendo um usuario que escolheu um restaurante
    Posso acessar o cardapio


    Scenario: Produto

        When acesso a lista de restaurantes
        And escolho o restaurante "Burger House"
        Then eu vejo os seguintes items disponiveis no cardápio
            | produto        | descricao                      | preco    |
            | Classic Burger | O clássico. Não tem como errar | R$ 18,50 |
            | Batatas Fritas | Batatas fritas crocantes       | R$ 5,50  |
            | Refrigerante   | O refri mais gelado da cidade  | R$ 4,50  |