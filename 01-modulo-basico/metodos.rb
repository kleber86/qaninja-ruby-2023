def diga_ola
  puts 'Olá'
end
diga_ola

def retorna_nome
  'Kleber'
end
resultado = retorna_nome
puts resultado

def soma(v1, v2)
  total = v1 + v2
  total
end
res = soma(10, 2)
res_ruby = soma 10, 2 # Faz a mesma coisa que o método acima.
puts res
puts res_ruby

def diga_seu_nome(nome)
  puts "Olá, #{nome}"
end

# as duas formas de chamar o método são validas.
diga_seu_nome('Kleber')
diga_seu_nome 'Kleber'
