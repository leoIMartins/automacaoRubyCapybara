

class Conta
  attr_accessor :saldo

  def deposita(valor)
    self.saldo += valor #self é o this do Java
    puts "Depositando a quantia de #{valor} reais."   #interpolação de String... não converte a variável 'valor' para String
  end
end

c = Conta.new

c.saldo = 0.0   #Inicializar a variável para não dar erro de tipagem

c.deposita(100.00)
puts c.saldo