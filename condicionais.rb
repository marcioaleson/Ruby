# encoding: utf-8
puts "Digite um número:"
n = gets
if n.to_i > 10
	puts "O número #{n} è maior que 10."
else
	puts "O número #{n} é menor que 10."
end

puts "Digite um outro número:"
n2 = gets

if n2.to_i > 10
	puts "O número é maior que 10."
elsif n2.to_i == 10
	puts "O número é igual a 10."
else
	puts "O número é menor que 10."
end

puts "Digite um outro número:"
n3 = gets
resultado =
if n.to_i<10
 	"O número é menor que 10."
 else
 	"O número é maior que 10."
 end 

puts resultado


puts "Digite o seu peso:"
peso = gets
unless peso.to_f <= 100
	puts "Você está fora de forma."
end

puts "Digite o seu peso novamente:"
peso = gets 
case peso.to_f
when 1..50
	puts "Você está muito magro!"
when 50..80
	puts "Você está em forma!"
when 80..120
	puts "Você está fora de forma!"
end