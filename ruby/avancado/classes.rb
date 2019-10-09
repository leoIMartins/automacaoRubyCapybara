

class Conta
  #atributos
  attr_accessor :saldo, :nome

  #construtor executado toda vez quando é identificado o comando 'new'
  def initialize(nome)
    #Inicializar a variável para não dar erro de tipagem... ficaria nulo e daria problema ao somar com float
    self.saldo = 0.0
    self.nome = nome
  end

  def deposita(valor)
    #self é o this do Java
    self.saldo += valor
    #interpolação de String... não converte a variável 'valor' para String
    puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}."
  end
end

#Nova instância da classe 'Conta'
c = Conta.new('Léo')

c.deposita(100.00)
puts c.saldo

c.deposita(10.00)
puts c.saldo
puts c.nome