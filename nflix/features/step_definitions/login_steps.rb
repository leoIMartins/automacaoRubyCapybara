Quando("eu faço login com {string} e {string}") do |email, password|
  @login.go
  @login.with(email, password)
end

Então("devo ser autenticado") do
  expect(get_token.length).to be 147
end

Então("devo ver {string} na área logada") do |expect_name|
  @sidebar = SidebarView.new
  expect(@sidebar.logged_user).to eql expect_name
end

Então("não devo ser autenticado") do
  expect(get_token).to be nil
end

Então("devo ver a mensagem de alerta {string}") do |expect_message|
  expect(@login.alert).to eql expect_message
end