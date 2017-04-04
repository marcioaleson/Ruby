module Combustivel
	attr_accessor :tipo_combustivel, :valor_litro, :quantidade_combustivel

    def definir_valores(tipo,valor,quantidade)
     @tipo_combustivel = tipo
     @valor_litro = valor
     @quantidade_combustivel = quantidade
    end

    def abastecer_por_valor(valor)
	 quantidade = valor*valor_litro
	 return quantidade
	end	
	
	def abastecer_por_litro(quantidade)
	 valor = quantidade  /valor_litro
	 return valor
	end

	def alterar_valor(valor)
	 @valor_litro = valor
	end

    def alterar_tipo_combustivel(tipo)
     @tipo_combustivel = tipo
    end
	
	def alterar_quantidade_combustivel(quantidade)
	 @quantidade_combustivel = quantidade
	end
end