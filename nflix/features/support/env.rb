require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "os"

require_relative "helpers"

World(Helpers)  # Todos os recursos do módulo Helpers são nativos dentro da execução do cucumber

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["ENV_TYPE"]}.yaml"))

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = CONFIG["url"]
  config.default_max_wait_time = 5
end
