#encoding: utf-8

class Carro 

     attr_reader :marca, :modelo, :tanque, :criado
     attr_accessor :cor
     @@quantidade = 0

	 def initialize(marca, modelo, cor, tanque)
		 @marca = marca
		 @modelo = modelo 
		 @cor = cor
		 @tanque = tanque
		 @@quantidade+=1
		 @criado = Time.now
	 end

	 def to_s
	 	 "Marca: #{@marca}, Modelo: #{@modelo}, Cor: #{@cor} e Tanque: #{@tanque}."
	 end

	 #Método para atualizar a variável de instância criado.
	 def initicalize_copy(original)
	      puts "Criado objeto novo #{self.object_id} duplicado de #{original.object_id}."
	      @criado = Time.now 	
	 end 

	 def self.quantidade
	 	 @@quantidade
	 end
	
end

c1 = Carro.new(:Ferrari,:Spider,:Vermelha,50)
puts c1
c2 = c1
sleep 1
c3 = c1.dup
puts "Objeto ID do carro 1 #{c1.object_id}."
puts "Objeto ID do carro 2 #{c2.object_id}."
puts "Objeto ID do carro 3 #{c3.object_id}."
puts "Hora de criação c1 #{c1.criado}"
puts "Hora de criação c3 #{c3.criado}"

#Shallow copy que é a copia do objeto mas não a dos objetos referenciado pelo mesmo.
class A 

     attr_reader :outro

	 def initialize(outro = nil)
		 @outro = outro
	 end

	 def show
	 	 puts "Estou em #{self.class.name}, #{object_id}"
	 	 puts "Outro: #{@outro.object_id}" if !@outro.nil?
	 end

end

class B < A	
	
end

a = A.new
b = B.new(a)

a.show

b.show
b2 = b.dup
b2.show

#Deep copy que a duplicação dos objetos referenciados pelo objeto usando serialização

b3 = Marshal.load(Marshal.dump(b))
b3.show

