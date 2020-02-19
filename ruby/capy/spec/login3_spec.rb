

describe 'Login 2', :login3 do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/access'
    end

    it 'login com sucesso' do

        login_form = find('#login')     # escopo

        login_form.find('input[name=username]').set 'stark'     # elemento será procurado dentro do contexto "login_form", não tendo problema com ambiguidade de elementos
        login_form.find('input[name=password]').set 'jarvis!'   # elemento será procurado dentro do contexto "login_form", não tendo problema com ambiguidade de elementos

        click_button 'Login'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end
    
end