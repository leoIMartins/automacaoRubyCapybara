
describe 'Upload', :upload do

    before(:each) do
        visit 'http://training-wheels-protocol.herokuapp.com/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'   # @arquivo é uma variável de instância, por isso o @
        @imagem = Dir.pwd + '/spec/fixtures/imagem.png'   # @arquivo é uma variável de instância, por isso o @
    end

    it 'upload com arquivo texto' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end

    it 'upload de imagem' do
        attach_file('file-upload', @imagem)
        click_button 'Upload'

        sleep 5
        img = find('#new-image')
        expect(img[:src]).to include '/uploads/imagem.png'
    end

    after(:each) do
        sleep 3
    end

end