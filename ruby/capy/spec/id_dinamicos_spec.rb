describe 'IDs Dinâmicos', :ids_dinamicos do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/access'
    end

    # $ => termina com
    # ^ => começa com
    # * => contém

    it 'cadastro' do
        find('input[id$=UsernameInput]').set 'fernando' # Procura um elemento cujo id tenha o sufixo especificado
        find('input[id^=PasswordInput]').set '123456'   # Procura um elemento cujo id tenha o prefixo especificado
        find('a[id*=GetStartedButton]').click       # Procura um elemento cujo id contenha a cadeia de caracteres especificados

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3
    end

end