class Retangulo 
 attr_accessor :ladoA, :base, :altura

 def initialize(ladoA,base,altura)
     @ladoA = ladoA
     @base = base
     @altura = altura
 end

 def pisos(ladoA,base)
 	ladoA * base
 end

end


puts "Entre com a medida do ladoA:"
lado = gets.to_f

puts "Entre com a medida base:"
base = gets.to_f

puts "Entre com a medida da altura:"
altura = gets.to_f

retangulo = Retangulo.new(lado,base,altura)

pisos = retangulo.pisos(lado,base)

puts "A quantidade de pisos de 1m^2 seria:#{pisos}"
puts "A quantidade de rodapés de 1m^2 seria:#{base}"


