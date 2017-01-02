puts "Digite o seu usuário:"
usuario = gets.chomp.to_s
puts "Digite a sua senha:"
senha = gets.chomp.to_s
while senha == usuario
	puts "Digite o seu usuário:"
	usuario = gets.chomp.to_s
	puts "Digite a sua senha:"
	senha = gets.chomp.to_s
end