nomes = ["Ruby","Java","Php"]
nomes << "C++"# adicionando um elemento ao array.
puts nomes 
pessoa = {:nome=>"Marcio",:email=>"marcioaleson@gmail.com"}
puts pessoa[:nome]
puts pessoa[:email]
numeros = [1,2,3,4,5]
numeros.each {|numero| puts "O array tem o número: "+numero.to_s} #Interadores.
puts numeros[0..1]
puts numeros.first
puts numeros.last
puts numeros.take(2)
