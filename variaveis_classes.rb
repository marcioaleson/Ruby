#encoding: utf-8

class Carro
     
     attr_reader :marca, :modelo, :tanque
     attr_accessor :cor 
     @@quantidade = 0

	def initialize(marca, modelo, cor, tanque)
	     @marca = marca
	     @modelo = modelo
	     @cor = cor
	     @tanque = tanque
	     @@quantidade +=1
	end

	def to_s
		 "Marca: #{@marca}, Modelo: #{@modelo}, Cor: #{@cor} e Tanque: #{@tanque}"
	end

	def quantidade
		 @@quantidade
	end

	def self.quantidade
		@@quantidade
	end

end

corsa = Carro.new(:chevorlet, :corsa, :preto, 50)
gol = Carro.new(:volks, :gol, :azul, 42)
ferrari = Carro.new(:ferrari, :viper, :vermelho, 70)

puts ferrari.quantidade
puts Carro.quantidade