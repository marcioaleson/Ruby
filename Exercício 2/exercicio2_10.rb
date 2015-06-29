puts "Digite o turno que você estuda:"
turno = gets.chomp.to_s
case turno
when 'M'
	puts "Bom dia!"
when 'V'
	puts "Boa tarde!"
else
	puts "Boa noite!"
end