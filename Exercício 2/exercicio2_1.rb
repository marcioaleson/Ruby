puts "DIgite o primeiro nomero:"
numero1 = gets.to_i
puts "Digite o segundo numero:"
numero2 = gets.to_i
if numero1 > numero2
	puts "O numero mair e o primeiro numero: #{numero1}"
elsif numero1 < numero2
	puts "O numero maior e o segundo numero: #{numero2}"
else
	puts "Os numeros sao iguais."
end
		