require './modulecombustivel.rb'
class BombamCombustivel
 include Combustivel

end

c = BombamCombustivel.new
c.definir_valores("Gasolina",3.00,100)
puts "Tipo de combustível: #{c.tipo_combustivel};"
puts "Valor do litro: #{c.valor_litro};"
puts "Quantidade disponivel: #{c.quantidade_combustivel}"