puts "Digite o primeiro número:"
numero1 = gets.to_i

puts "Digite o segundo número:"
numero2 = gets.to_i

puts "Digite o terceiro número:"
numero3 = gets.to_i

numeros = [numero1,numero2,numero3]

puts numeros.sort { |x,y| y <=> x }