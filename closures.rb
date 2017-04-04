#encoding: utf-8

#Closures são funções anônimas
def criar_contador(inicial,incremento)
	 contador = inicial
	 lambda { contador += incremento  }
end

meu_contador = criar_contador(0,1)
puts meu_contador.call
puts meu_contador.call
puts meu_contador.call