describe 'Mouse Hover', :hovers do

    before(:each) do
        visit '/hovers'
    end

    it 'quando passo o mouse sobre o blade' do
        #card = find('img[alt=Blade]')
        card = find('img[alt*=Blade]')  # Procura um elemento img cujo atributo alt contenha 'Blade'
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'quando passo o mouse sobre o pantera negra' do
        #card = find('img[alt="Pantera Negra"]') # Pantera Negra entre parenteses por causa do caractere espaço
        card = find('img[alt^=Pantera]')  # Procura um elemento img cujo atributo alt comece com 'Pantera'
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'quando passo o mouse sobre o homem aranha' do
        card = find('img[alt$=Aranha]')   # Procura um elemento img cujo atributo alt termine com 'Aranha'
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

    after(:each) do
        sleep 0.5 # temporário, só para verificar o resultado
    end
end