numeros = Array.new
#5.times {numeros << gets.chomp.to_f}
#somatorio = numeros.reduce(:+)
somatorio = 0
for i in (1..5)
numeros << gets.chomp.to_f
somatorio += numeros[i-1]
end
puts "A soma total foi #{somatorio}"
media = (somatorio/5)
puts "A media da soma dos 5 numeros foi #{media}"