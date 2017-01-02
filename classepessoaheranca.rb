#require './classesanimal.rb'
class Pessoa
attr_accessor :nome

private
 def telefone
end

end
class PessoaFizica < Pessoa
 attr_accessor :cpf
end

pessoa = Pessoa.new
p Pessoa.instance_methods
p Pessoa.private_methods

pessoa = PessoaFizica.new
pessoa.nome = "Marcio Aleson"
puts pessoa.nome
p PessoaFizica.instance_methods
p PessoaFizica.private_methods