class Macaco

 attr_accessor :nome
 @@estomago = Array.new

 def initialize(nome,*comida)
	 @nome = nome
	 @@estomago = comida
 end

 def comer(comida)
	 @@estomago.push(comida)
 end

 def ver_estomago
	 "O macaco comeu:" + @@estomago.to_s
 end

 def digerir
 	@@estomago.clear
 end

end

macaco = Macaco.new("Mac",["banana","maça"])
puts "Nome: #{macaco.nome},"
puts macaco.ver_estomago
macaco.comer("laranja")
puts macaco.ver_estomago
puts "Digerir ..."
macaco.digerir
puts macaco.ver_estomago
