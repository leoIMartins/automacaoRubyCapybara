

describe 'iframes' do

    # iframe com id e name
    describe 'bom', :nice_iframe do
        before(:each) do
            visit '/nice_iframe'
        end

        it 'adicionar ao carrinho' do

            within_frame('burgerId') do
                produto = find('.menu-item-info-box', text: 'REFRIGERANTE')
                produto.find('a').click
                expect(find('#cart')).to have_content 'R$ 4,50'
                sleep 5
            end
        end

    end

    # iframe sem id e name (necessários pelo capybara)
    describe 'ruim', :bad_iframe do
        before(:each) do
            visit '/bad_iframe'
        end

        it 'adicionar deve estar vazio' do

            # script jQuery para inserir um id temporário no iframe. Necessário aspas duplas " " por conta de ser um script
            script = '$(".box-iframe").attr("id", "tempId");'
            page.execute_script(script)

            within_frame('tempId') do
                expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
                sleep 3
            end
        end
    end
end