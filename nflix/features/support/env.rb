require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

require_relative "helpers"

World(Helpers)  # Todos os recursos do módulo Helpers são nativos dentro da execução do cucumber

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = "http://localhost:8080"   # Docker ToolBox no Windows
end
