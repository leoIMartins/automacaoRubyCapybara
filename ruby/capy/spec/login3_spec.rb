

describe 'Login 2', :login3 do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/access'
    end

    it 'login com sucesso' do

        # 1ª forma de trabalhar com escopo
        # login_form = find('#login')     # escopo

        # login_form.find('input[name=username]').set 'stark'     # elemento será procurado dentro do contexto "login_form", não tendo problema com ambiguidade de elementos
        # login_form.find('input[name=password]').set 'jarvis!'   # elemento será procurado dentro do contexto "login_form", não tendo problema com ambiguidade de elementos
        # click_button 'Entrar
        
        # 2ª forma de trabalhar com escopo 
        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
        end

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'cadastro com sucesso' do

        within('#signup') do
            find('input[name=username]').set 'fernando'
            find('input[name=password]').set '123456'
            click_link 'Criar Conta'
        end

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 5
    end
    
end