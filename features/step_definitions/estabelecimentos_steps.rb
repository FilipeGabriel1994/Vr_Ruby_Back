# frozen_string_literal: true

Given("faço uma requisição GET para o serviço de estabelecimentos") do
  @request_estabelecimentos = estabelecimentos.get_estabelecimentos
end

Then("o serviço GET deve responder com {int}") do |status_code|
  # Then('o serviço GET deve responder com {float}') do |float|
  expect(@request_estabelecimentos.code).to eq status_code
end

Then("retornar o Objeto typeOfEstablishment") do
  @response = estabelecimentos.get_estabelecimento
  puts "response code: #{@response.code}"
  puts "response message: #{@response.message}"
  @key_retorno = @response.parsed_response["typeOfEstablishment"][0]["key"]
  @name_retorno = @response.parsed_response["typeOfEstablishment"][0]["name"]
  @label_retorno = @response.parsed_response["typeOfEstablishment"][0]["label"]

  puts @key_retorno
  puts @name_retorno
  puts @label_retorno
end
