
#Estrutura do 'try catch' do Ruby
# begin
#     # Devo tentar alguma coisa
#     file = File.open('./ola')
#     if file
#         puts file.read
#     end
# rescue Exception => e
#     # Obter um possível erro
#     puts e.message
#     puts e.backtrace
# end

#Método com try catch
def soma(n1, n2)
    puts n1 + n2
    
rescue Exception => e
    puts 'Erro ao executar a soma'
end

soma('10', 5)