require "httparty"
require "rspec"
require "httparty/request"
require "httparty/response/headers"
require_relative "spec_helper/spec_rest"
require "allure-cucumber"

#load de arquivo de ambiente
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV["AMBIENTE"]}.yml")

World(REST)

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
