class Carro
  attr_accessor :nome

  def ligar
    puts 'carro ligado'
  end
end

civic = Carro.new
puts civic.class # Carro
civic.nome = 'Civic'
puts civic.nome # Civic
civic.ligar # carro ligado
