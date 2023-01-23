carro = Hash[nome: 'Civic', marca: 'Honda', cor: 'vermelho']

puts carro # {:nome=>"Civic", :marca=>"Honda", :cor=>"vermelho"}
puts carro[:nome] # Civic
puts carro[:marca] # Honda

# adicionando atributos
carro[:modelo] = 'SI'
puts carro # {:nome=>"Civic", :marca=>"Honda", :cor=>"vermelho", :modelo=>"SI"}
