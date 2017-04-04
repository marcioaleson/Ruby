#encoding: utf-8
#Métodos em ruby.
def diga_oi
	puts "Oi!"
end
puts diga_oi

def vezes(p1,p2)
   p1*p2
end

puts vezes(2,3)

def cinco_multiplos(numero)
	(1..5).map { |e| e*numero  }
end

v2,v2,v3,v4,v5 = cinco_multiplos(5)

puts "#{v1}, #{v2}, #{v3}, #{v4} e #{v5}"

#Quantidade de parametros

def q_parametros(n1,n2)
	n1*n2
end
puts q_parametros(2,3)
puts " O método recebe #{method(:q_parametros).arity} parametros"

#Parametros default

def oi(nome="Estranho")
	puts "Oi, #{nome}"
end
puts oi("Márcio")
puts oi

#valores variáveis
def varios(*valores)
	valores.each{|valor| puts "Valor=#{valor}"}
	puts "-"*25
end
valores(1,2,3)

#Passando blocos e procs para mátodos.

def executa_bloco(valor)
    yield(valor)
end
executa_bloco(2){ |valor| puts valor*valor}
executa_bloco(4){ |valor| puts valor*valor}
executa_bloco(8){ |valor| puts valor*valor}

def executa_bloco2(valor)
	yield(valor) if block_given?
end
executa_bloco2(2){|valor| puts valor* valor}
executa_bloco2(4){|valor| puts valor*valor}
executa_bloco2(8){|valor| puts valor*valor}

def executa_bloco3(valor,&proc)
	puts proc.call(valor)
end
executa_bloco3(2){|valor| valor*valor}

#Alterando o objeto com sua referência pelo método.

def altera_valor(valor)
    valor.upcase!
end

string = "Oi, mundo!"
altera_valor(string)
puts string

#Usando exceções em métodos.

def soma_valores(valor1, valor2)
	valor1+valor2
rescue
	nil
end
puts soma_valores(1,2)
puts soma_valores(1,:um)

#Métodos destrutivos.

def revup!(string)
   string.reverse!.upcase!
end
string = "Uma string qualquer"
revup!(string)
puts string
puts string.object_id

#Métodos de teste.

def ok?
   !obj.nil?
end
puts ok?(1)
puts ok?("um")
puts ok?(:um)
puts ok?(nil)

#Métodos com hash.

def metodo_com_hash(args)
   one = args[:one]
   two = args[:two]
   puts "one: #{one} two: #{two}"
end

metodo_com_hash(one: 1, two: 2)
metodo_com_hash(two: 2, one: 1)

#Usando argumentos nomeados.

def metodo_com_argnomeados(str: "Teste de argumentos nomeados", num: 123456778)
   [str, num]
end

puts metodo_com_argnomeados(str:'Outro teste', num: 1)
puts metodo_com_argnemeados(str: 'Teste novamente')
puts metodo_com_argnomeados(num: 2)
puts metodo_com_argnomeados
puts metodo_com_argnomeados(strr: 'Teste para dar erro')

#Capiturando um método como se fosse um proc.

class TesteCapturaMetodo
   def teste_captura_metodo(quantidade)
   	   quantidade.times(puts "Teste!")
   end
end

t = TesteCapturaMetodo.new
m = t.method(:teste_captura_metodo)
puts m
m.(3)
puts m.to_proc

#Usando supporte da linguagem.

module Enumerable
	def $
		self.inject{|soma, valor| soma+=valor}
	end
end

puts [1,2,3].$
puts (0..3).$