 #!/usr/bin/env ruby
require './classeponto.rb'

class Retangulo

  attr_accessor :largura, :altura
  @@ponto1 = Ponto.new(0,0)
  @@ponto2 = Ponto.new(0,0)
  @@ponto3 = Ponto.new(0,0)
  @@ponto4 = Ponto.new(0,0)
  @@centro = Ponto.new(0,0) 
  
  def initialize(largura,altura)
  	@largura = largura
  	@altura = altura
  	@@ponto1.x = 1
  	@@ponto1.y = 1
  	@@ponto2.x = largura
  	@@ponto2.y = 1
  	@@ponto3.x = largura
  	@@ponto3.y = altura
  	@@ponto4.x = 1
  	@@ponto4.y = altura
    @@centro.x = largura/2
    @@centro.y = altura/2
  end

  def menu
     menu = <<-Opcoes
         Menu
     1 - Alterar o ponto 1.
     2 - Alterar o ponto 2.
     3 - Alterar o ponto 3.
     4 - Alterar o ponto 4.
     5 - Centro.
     Opcoes
     puts menu
     self.opcoes
  end

  def opcoes

     puts "Digite uma opção valida:"
     op=gets.chomp.to_i

     case op

     when 1
     puts "X: #{@@ponto1.x}, Y: #{@@ponto1.y}"
     puts "Digite o novo valor para o x:"
     novo_x = gets.chomp.to_i
     puts "Digite o novo valor para o y:"
     novo_y = gets.chomp.to_i
     @@ponto1.x = novo_x
     @@ponto1.y = novo_y
     when 2
     puts "X: #{@@ponto2.x}, Y: #{@@ponto2.y}"
     puts "Digite o novo valo para x:"
     novo_x = gets.chomp.to_i
     puts "Digite o novo valor para o y:"
     novo_y = gets.chomp.to_i
     @@ponto2.x = novo_x
     @@ponto2.y = novo_y
     when 3
     puts "X: #{@@ponto3.x}, Y: #{@@ponto3.y}"
     puts "Digite o novo valor para x:"
     novo_x = gets.chomp.to_i
     puts "Digite o novo valor para y:"
     novo_y = gets.chomp.to_i
     @@ponto3.x = novo_x
     @@ponto3.y = novo_y 
     when 4
     puts "X: #{@@ponto4.x}, Y: #{@@ponto4.y}"
     puts "Digite o novo valor para x:"
     novo_x = gets.chomp.to_i
     puts "Digite o novo valor para y:"
     novo_y = gets.chomp.to_i
     @@ponto4.x = novo_x
     @@ponto4.y = novo_y
     else
     	 puts "O centro do retangulo é:"
     	 puts "X: #{@@centro.x}, Y: #{@@centro.y}"     				
     end
  end

end

r = Retangulo.new(2,2)
r.menu

