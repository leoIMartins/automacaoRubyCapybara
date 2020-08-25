

describe 'Caixa de opções', :dropdown do   # ',:dropdown' para executar somente este cenário

    it 'item específico simples' do
        visit '/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3 # temporário
    end

    it 'item especifico com o find' do
        visit '/dropdown'
        drop = find('.avenger-list')   # Procura o elemento atrvés do atributo 'class' e guarda na variável 'drop'
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3
    end

    it 'qualquer item', :sample do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option     # Seleciona aleatoriamente com o 'sample' uma opção dentro do array retornado pelo método 'all'
    end

end