
describe 'Caixas de seleção', :checkbox do

    before(:each) do    # É executado antes de todos os cenários
        visit 'http://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'marcando uma opção' do
        check('thor')   # Elemento possui name ou id
    end

    it 'desmarcando uma opção' do
        uncheck('antman')   # Elemento possui name ou id
    end

    it 'marcando com find set true' do
        find('input[value=cap').set(true)   # Elemento não possui name ou id
    end

    it 'desmarcando com find set false' do
        find('input[value=guardians').set(false)    # Elemento não possui name ou id
    end

    after(:each) do     # É executado depois de todos os cenários
        sleep 3
    end

end