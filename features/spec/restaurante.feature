Feature: Restaurantes    
    Para que eu possa saber quais os restaurantes disponíveis com o tempo de entrega e nota de avaliação
    Sendo um usuário que deseja pedir comida
    Posso acessar a lista de restaurantes

    Scenario: Todos os restaurantes

        When acesso a lista de restaurantes
        Then vejo todas as opções disponíveis

    Scenario: Categorias

        When acesso a lista de restaurantes
        Then cada restaurante deve exibir sua categoria

    Scenario: Tempo de entrega

        When acesso a lista de restaurantes
        Then cada restaurante deve exibir o tempo de entrega

    Scenario: Nota de avaliação

        When acesso a lista de restaurantes
        Then cada restaurante deve exibir sua nota de avaliação