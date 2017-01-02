#Teste de String em ruby
nome = "Marcio ALeson"
puts nome
nome = 1
puts nome
nome = 'Marcio Aleson'
nome = %{Outra forma de declarar um string.}
puts nome
nome = %q{Outra forma.}
puts nome
#Q maiusculo funciona interpoloção e caracteres de escape.
nome = %Q{Outra forma.}
puts nome
#Textos com quebra de linhas automaticas.
texto = <<HTML
Bla Bla Bla Bla Bla 
Bla Bla Bla Bla Bla
HTML
puts texto
primeiroNome = "Marcio"
sobreNome = "Aleson"
nomeCompleto = primeiroNome + " " + sobreNome
puts nomeCompleto
curso = "Ruby on Rails \nProgramação Web."
puts curso
sitacao = "\"Ruby é uma linguagem de programação legal.\""
puts sitacao
#Curso de Programação Ruby on Rails Senac PI
#Caracteres de escape não funciona com aspas simples.
puts '\n' 
nomeCompleto2 = "#{primeiroNome} #{sobreNome}"
puts nomeCompleto2

