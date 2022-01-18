module Rest
  class Estabelecimentos
    # para trazer os métodos HTTParty para dentro da classe Estabelecimentos
    include HTTParty
    #aqui já passamos o tipo de headers que precisamos nas nossas chamdas
    headers "Content-Type" => "application/json"
    #aqui é a base Uri que configuramos nos ambientes
    base_uri CONFIG["base_uri"]
    #método para fazer o get para nossa api, já usando o HTTParty para ajudar na requisição
    format :json

    def get_estabelecimentos
      self.class.get("/")
      #self.class.get("/api/Estabelecimentos")
    end

    def get_estabelecimento
      #HTTParty.get("/")
      HTTParty.get("https://portal.vr.com.br/api-web/comum/enumerations/VRPAT?id=27", :headers => { 'cache-control': "no-cache", 'content-type': "application/json" }, :body => { mkcol: "key" }.to_json)
    end

    # def initialize(body)
    #   @options = { :typeOfEstablishment => body }
    #   @options = {}
    # end

    # def get_key(key)
    #   HTTParty.get("/#{key}", @options)
    #   #self.class.get("/api/Estabelecimentos")
    # end
  end
end

# headers: {
#   "key": "REFEICAO|PIZZARIA",
#   "name": "PIZZARIA",
#   "label": "Refeição - Pizzaria",
# },
