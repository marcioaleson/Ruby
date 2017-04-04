puts "Digite o primeiro número:"
numero1 = gets.to_i
puts "Digite  o segundo número:"
numero2 = gets.to_i
puts "Digite o terceiro número:"
numero3 = gets.to_i
numeros = [numero1,numero2,numero3]
puts "O maior número é: #{numeros.max}"
puts "O menor números é: #{numeros.min}"