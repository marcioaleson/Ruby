#proc = procedimento
proc = lambda {puts "Teste!"}
proc.call
def executar(proc)
   proc.call
end
executar(lambda {puts "Teste!"})
executar(lambda {puts "Outro proc"})
5.times.each{|numero| puts numero}
executar(lambda do 
	puts "Teste!"
end)

#Redefinido o metodo da classe array.
class Array
    def iterate
        self.each_with_index do [n,i]
	    self[i] = yield(n)
         end
     end
end

numeros = [1,2,3,4]
dobros = numeros.collect do [numeros]
	numeros*2
end
p numeros
p dobros