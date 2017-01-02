class BixinhoVIrtual
attr_accessor :nome, :fome, :saude, :idade

 def initialize(nome,fome,saude,idade)
 	 @nome = nome
 	 @fome = fome
 	 @saude = saude
 	 @idade = idade
 end

 def alterar_nome(nome)
 	@nome = nome
 end

 def alterar_fome(fome)
 	@fome = fome
 end

 def alterar_saude(saude)
 	@saude
 end

 def alterar_idade(idade)
 	@idade = idade
 end

 def retorar_nome
 	@nome
 end

 def retornar_fome
 	@fome
 end

 def retornar_saude
 	@saude
 end

 def retornar_idade
 	@idade
 end

def humor
	if (@saude-@fome > 0)
		"Saudavel!"
	else
		"Doente!"
	end
end

end

tamagushi = BixinhoVIrtual.new("Toto",10,50,2)
puts "Nome: #{tamagushi.nome}, Fome: #{tamagushi.fome},"
puts "Saúde: #{tamagushi.saude}, Idade: #{tamagushi.idade}."
puts "Humor: #{tamagushi.humor}"