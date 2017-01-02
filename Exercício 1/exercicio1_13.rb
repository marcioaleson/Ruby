puts "Entre com a sua altura:"
altura = gets.to_f
puts "Entre com o seu sexo:"
sexo = gets.chomp
if sexo == "m"
peso_ideal = (72.7*altura)-58
else
peso_ideal = (62.1*altura)-44.7
end
puts "Entre com o seu peso:"
peso = gets.to_f
if peso == peso_ideal
puts "Seu peso é ideal."
else
puts "Seu peso não é o ideal."
end