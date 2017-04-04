=begin

begin
numero = 1
string = "oi"
numero + string
rescue StandardError => exception
puts "Ocorreu um erro: #{exception}"
end


begin 
	numero = 1
	string = "oi"
	numero + string 
rescue StandardError => exception
	puts "Ocerreu um erro do tipo #{exception.class}: #{exception}"
end



begin
	numero = 1
	string = "oi"
    numero + string
rescue StandardError => exception
	puts "Ocorreu um erro do tipo #{exception.class}: #{exception}"
ensure
	puts "Erro!"
end
puts "Fim do programa!"



begin
	numero = 1
	string = "oi"
	numero + string
rescue StandardError => exception
	puts "Ocorreu um erro do tipo #{exception.class}: #{exception}"
	puts msg
ensure
	puts "Erro!"
end
puts "Fim do programa!"

numero1 = 1
numero2 = "dois"
puts numero1 + numero2
rescue StandardError => exception
	puts "Ops, problemas aqui (#{exception.class}), vou tentar novamente."
	numero2 = 2
	retry
end

begin
	puts numero1 + numero2
rescue  StandardError => exception
	puts "Ops, problemas aqui (#{exception.class}), vou tentar novamente."
	puts exception.backtrace
	numero2 = 2
	retry
end

#Disparando exceção
numero1 = 1
numero2 = 1
begin
	puts numero1 + numero2
	raise Exception.new("Esperava resultado 3.") if numero1 + numero2 != 3
rescue StandardError => exception
	puts "Ops, problemas aqui (#{exception.class}), vou tentar de novo."
end

#Descobrido a exceção anterior
begin
	begin
		raise 'exception1'
	rescue StandardError => exception1
		raise 'exception2'
	end
rescue StandardError => exception2
	puts "A causa da exceção #{exception2} foi #{exception2.cause}"
end

#Criando exceções

# encodin: utf-8
class NomeNotEqual < StandardError
	def initialize(current, expected)
		super "Você digitou o nome inválido(#{current}) e era esperado #{expected}."
	end

begin
	correto = "teste"
	puts "Digite o seu nome:"
	name = gets.chomp
	raise NomeNotEqual.new(name, correto) if name != correto
	puts "Digitou o nome correto!"
rescue  NomeNotEqual => e
	puts e
end

=end

#catch e throw

# encoding: utf-8

	def get_input
		puts "Digite um número:"
		resposta = gets
		throw :end_of_resposta, resposta if resposta.chomp =~ /^\d+$/
		resposta
	end

	numero = catch(:end_of_resposta) do
		while true
			get_input
		end
	end

puts "Número digitado #{numero}."