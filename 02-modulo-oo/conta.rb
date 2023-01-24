class Conta
  attr_accessor :saldo, :nome

  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome
  end
  def deposita(valor)
    self.saldo += valor
    puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}."
  end
end

c = Conta.new('Kleber')
c.deposita 100.00
puts c.saldo # 100.0
c.deposita(10.00)
puts c.saldo # 110.0
