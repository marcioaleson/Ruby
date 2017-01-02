#encoding: utf-8 
#Exemplo do uso de uma classe em ruby.
class Carro 

    attr_reader :marca, :modelo, :tanque #Atributos só para leitura.
    attr_writer :cor #Atributo para escrita.
    attr_accessor :tanque #Atributo para leitura e escrita.

	def initialize(marca, modelo, cor, tanque)
		@marca = marca
		@modelo = modelo
		@cor = cor
		@tanque = tanque
	end

	def to_s
		"Marca:#{@marca}, Modelo:#{@modelo}, Cor: #{@cor}, Tanque:#{@tanque}."
	end

#Uso de atributos virtuais.
	def galoes
		@tanque/3.785
	end
end

corsa = Carro.new(:chevrolet,:corsa, :preto, 50)
p corsa
puts corsa
puts corsa.marca
#Alterando a cor do carro.
corsa.cor = "Azul"
puts corsa

#Usando Struct para criar atributos para leitura e escrita.

Moto = Struct.new(:marca, :modelo, :tanque, :cor)
moto = Moto.new(:honda,:rua,10,:preta)
puts moto

#Usando OpenStruct para criar classes de uma forma mais flexível.
require "ostruct"
carro2 = OpenStruct.new
carro2.marca = :chevrolet
carro2.modelo = :corsa
carro2.cor = :branco
carro2.tanque = 30
puts carro2

#Exemplo do uso de atributos virtuais em uma classe.
carro3 = Carro.new(:Ford,:fiesta,:azul,10)
puts carro3.galoes