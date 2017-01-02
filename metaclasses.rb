#encoding: utf-8
#Classe para testes com seus ancestrais!
class Teste
	
end
puts "String classes ancestrais: #{String.ancestors}."
puts "Teste classes ancestrais: #{Teste.ancestors}."

#Classe para testes com suas superclass.
class OutraTeste < Teste

end

puts "String superclass: #{String.superclass}"
puts "Teste supercalss: #{Teste.superclass}"
puts "OutraTeste superclass: #{OutraTeste.superclass}"


class Carro
     attr_reader :marca, :modelo, :tanque
     attr_accessor :cor 

     def initialize(marca, modelo, cor, tanque)
         @marca = marca
         @modelo = modelo 
         @cor = cor
         @tanque = tanque	
     end

    def to_s
         "Marca: #{@marca}, Modelo: #{@modelo}, Cor: #{@cor} e Tanque: #{@tanque}"
    end
end

corsa = Carro.new(:chevrolet, :corsa, :preto, 50)
gol = Carro.new(:volk, :gol, :azul, 42)

#Acrescentando um método a uma classe.
Carro.send(:define_method, "multiplica_tanque") do |valor|
     @tanque * valor
end

puts corsa.multiplica_tanque(2)
puts gol.multiplica_tanque(2)

#Remover um método de uma classe.
(class << corsa; self; end).send(:undef_method, "multiplica_tanque") do |valor|
     @tanque * valor
end

puts corsa.multiplica_tanque(2)
puts gol.multiplica_tanque(2)

##Método autodestrutivo
class MetodoDestrutivo 
	def apenas_uma_vez
		 def self.apenas_uma_vez
	         raise Exception, "Esse método é autodestrutivo!"
	     end
	     puts "Vou rodar apenas uma vez!!"
	end
end

metodo_autodestrutivo = MetodoDestrutivo.new
metodo_autodestrutivo.apenas_uma_vez