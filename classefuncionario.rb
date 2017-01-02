class Funcionario
	@@impostoDeRenda = 0.09
	def self.impostoDeRenda
	 @@impostoDeRenda
	end

	def self.impostoDeRenda=(impostoDeRenda)
	 @@impostoDeRenda=impostoDeRenda
	end
end
Funcionario.impostoDeRenda
funcionario=Funcionario.new
puts Funcionario.impostoDeRenda
Funcionario.impostoDeRenda=1.09
puts Funcionario.impostoDeRenda
funcionario=Funcionario.new