class Usuario
#attr_accessor:nome,:email,:site
 def nome=(nome)
 	@nome = nome
 end
 def nome
 	@nome
 end
  def email=(email)
  	@email = email
  end
  def email
  	@email
  end
  def site=(site)
  	@site=site
  end
  def site
  	@site
  end
# def initialize(nome, email,site)
#@nome = nome
#@email = email
#@site = site
#end
end

# usuario = Usuario.new("Marcio Aleson","marcioaleson@gmail.ccom","marcioaleson.xpg.com.br","64079-137")
usuario = Usuario.new 
usuario.nome = "Marcio Aleson"
usuario.email = "marcioaleson@gmail.com"
usuario.site="marcioaleson.xpg.com.br"
puts usuario.nome
puts usuario.email
puts usuario.site
p usuario
