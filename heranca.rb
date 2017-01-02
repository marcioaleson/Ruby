class Carro 

     attr_reader :marca, :modelo, :tanque
     attr_accessor :cor
     @@quantidade = 0

	 def initialize(marca, modelo, cor, tanque)
		 @marca = marca
		 @modelo = modelo 
		 @cor = cor
		 @tanque = tanque
		 @@quantidade+=1
	 end

	 def to_s
	 	 "Marca: #{@marca}, Modelo: #{@modelo}, Cor: #{@cor} e Tanque: #{@tanque}."
	 end

	 def self.quantidade
	 	 @@quantidade
	 end
	
end

class NovoCarro < Carro

     def to_s
          "Marca: #{@marca}, Modelo: #{@modelo}, Cor: #{@cor} e Tanque: #{@tanque}."		
     end	
	
end

class OutroCarro < Carro
     def to_s
          "Outro carro:"+super		
     end	
end

carro1 = Carro.new(:chevrolet, :corsa, :preto, 50)
carro2 = Carro.new(:chevrolet, :corsa, :prata, 50)
novo_carro = NovoCarro.new(:volks, :gol, :azul, 42)

puts carro1
puts carro2
puts novo_carro
puts Carro.quantidade
puts NovoCarro.quantidade