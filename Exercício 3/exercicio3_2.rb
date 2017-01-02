class Quadrado

	attr_accessor :tamanho_do_lado

	def initialize(tamanho_do_lado)
	@tamanho_do_lado = tamanho_do_lado
	end

	def mudar_valor_do_lado (tamanho_do_lado)
	@tamanho_do_lado = tamanho_do_lado
	end

	def retornar_valor_do_lado
	tamanho_do_lado
	end

	def calcular_area
	tamanho_do_lado**2
	end

end

quadrado = Quadrado.new(2)

puts quadrado.retornar_valor_do_lado

puts quadrado.calcular_area

quadrado.mudar_valor_do_lado(3)

puts quadrado.retornar_valor_do_lado

puts quadrado.calcular_area 