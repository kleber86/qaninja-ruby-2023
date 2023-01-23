# Usando times
5.times do
  puts 'usando times 5x'
end

5.times do |i|
  puts "Repedindo a mensagem #{i} vez(es)."
end

# Usando while
i = 0
while i < 5 do
  puts "while #{i} vez(es)"
  i += 1
end

# Usando for
for item in (1...11) do
  puts "usando for - #{item} vezes."
end

# Usando for each com arrays
vingadores = ['Iroman', 'Hulk', 'Spiderman']
vingadores.each do |v|
  puts v
end
