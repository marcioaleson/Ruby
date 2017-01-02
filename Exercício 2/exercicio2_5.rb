puts "Digite a primeira nota:"
nota1 = gets.to_f
puts "Digite a segunda nota:"
nota2 = gets.to_f
media = (nota1 + nota2)/2
if media == 10
puts "Aprovado com distincao."
elsif media >= 7 
puts "Aprovado."
else
puts "Reprovado." 
end