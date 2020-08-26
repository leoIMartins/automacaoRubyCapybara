require "capybara"
require "capybara/rspec"
require "selenium-webdriver"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL

  config.before(:example) do
    page.current_window.resize_to(1920, 1080)  # Muda a resolução da janela
  end

  config.after(:example) do |e|
    nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_') # Substitui os caracteres especiais e espaços
    page.save_screenshot('log/' + nome + '.png')  #if e.exception # if ternário ou short if do Ruby. Salva o print se o teste falhar
  end

end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome # "selenium_chrome_headless" executa os testes sem exibir o navegador
  config.default_max_wait_time = 30
  config.app_host = 'http://training-wheels-protocol.herokuapp.com' # Sufixo padrão para todas as rotas
end
