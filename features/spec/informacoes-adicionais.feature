@infos
Feature: Informações adicionais

    Para que eu possa ver as Informações adicionais
    Sendo um usuário que escolheu um restaurante
    Posso ver a categoria, descrição detalhada e horários de funcionamento


    Scenario: Detalhes do restaurante

        When acesso a lista de restaurantes
        And escolho o restaurante "Burger House"
        Then eu vejo os seguintes informações adicionais
            | categoria | Hamburgers                            |
            | descricao | 40 anos se especializando em trash food. |
            | horarios  | Funciona todos os dias, de 10h às 22h    |