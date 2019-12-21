

describe 'Forms' do

    it 'login com sucesso' do

        visit 'http://training-wheels-protocol.herokuapp.com/login'
        fill_in 'userId', with: 'stark'    # Preenche o campo procurando por name ou id
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true  # Valida se o elemento cujo #id='flash' está visível

        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'   # Método do capybara. Tem o mesmo efeito que o da linha 13. Procura um conteúdo dentro de um elemento

    end

    it 'senha incorreta' do

        visit 'http://training-wheels-protocol.herokuapp.com/login'
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis'

        click_button 'Login'

        expect(find('#flash')).to have_content 'Senha é invalida!'

    end
    
    it 'usuário não cadastrado' do
        
        visit 'http://training-wheels-protocol.herokuapp.com/login'
        fill_in 'userId', with: 'star'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'

    end
end