alfabeto = ('a'..'z').to_a
vogais = ["a","e","i","o","u"]
consoantes = alfabeto - vogais
letra = gets.chomp[0]
if consoantes.include? letra
 	puts "Consoantes"
elsif vogais.include? letra
puts "Vogal"
else
	puts "Numwero ou  Caracteres"
 end
 	