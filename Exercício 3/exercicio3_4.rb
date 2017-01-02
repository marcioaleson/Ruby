class Pessoa
    attr_accessor :nome, :idade, :peso, :altura

    def initialize(nome,idade,peso,altura)
        @nome = nome
        @idade = idade
        @peso = peso
        @altura = altura
	end

	def envelhecer(idade)
		crescer(idade*0.05)
		@idade += idade

	end

	def engordar(peso)
		@peso += peso
	end

	def emagrecer(peso)
		@peso -=peso 
	end

    def crescer(altura)
    	@altura += altura
    end

end

pessoa = Pessoa.new("Marcio",20,85,1.80)
puts "Nome: #{pessoa.nome} , Idade: #{pessoa.idade}"
puts "Peso: #{pessoa.peso} , Altura: #{pessoa.altura}."
puts "Envelhecer:"
pessoa.envelhecer(1)
puts "Idade: #{pessoa.idade} , Altura: #{pessoa.altura}"
puts "Emagrecer:"
pessoa.emagrecer(2)
puts "Peso: #{pessoa.peso}"
puts "Engordar:"
pessoa.engordar(5)
puts "Peso: #{pessoa.peso}"


