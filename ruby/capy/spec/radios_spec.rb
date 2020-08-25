
describe 'Botões de Radio', :radio do

    before(:each) do
        visit '/radios'
    end

    it 'seleção por ID' do
        choose('cap')   # Seleciona por ID
    end

    it 'seleção por find css selector' do
        find('input[value=guardians').click
    end

    after(:each) do
        sleep 3
    end

end