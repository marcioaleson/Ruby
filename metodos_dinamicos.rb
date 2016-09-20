#encoding: utf-8
 
 class Teste 

 	 def method_missing(meth, value = nil) #*args, &block
 	 	 sanitized = meth.to_s.split("=").first
 	 	 if meth =~ /=$/
 	 	 	 self.class.send(:define_method,meth)
 	 	 	 {|val| instance_variable_set("@#{sanitized}",val)
 	 	 	 self.send(meth, value)
 	 	 else
 	 	 	 self.class.send(:define_method, sanitized)
 	 	 	 {instance_varaible_get("@#{sanitized}")}
 	 	 	 self.send(meth)
 	 	 end
 	 	
 	 end
 	
 end

t = Teste.new
t.oi = "Oi, mundo!"
puts t.oi

puts t.hello
t.hello = "Hello, world!"
puts t.hello

class Teste2 
	 def self.method_added(meth)
	      puts "Adicionado o método #{meth}"	
	 end

	 def self.method_removed(meth)
	 	 puts "Removido o método #{meth}"
	 end
	
end

t = Teste2.new
t.class.send(:define_method,"teste"){puts "Teste!"}
t.teste
t.class.send(:remove_method,:teste)
t.teste

#Método fantasma

class Teste3
	 def method_missing(meth)
	 	 puts "Não sei o que fazer com a requisição #{meth}"
	 end
end

t = Teste3.new
t.teste