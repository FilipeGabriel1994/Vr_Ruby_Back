Feature: Acessar a APIe validar operações
    @get
    Scenario: Validar GET API typeOfEstablishment

        Given faço uma requisição GET para o serviço de estabelecimentos
        Then o serviço GET deve responder com 200
        And retornar o Objeto typeOfEstablishment
