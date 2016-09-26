#encoding:utf-8

require './paulista.rb'
require './gaucha.rb'


pessoa1 = Paulista::Pessoa.new
pessoa2 = Gaucha::Pessoa.new

puts pessoa1.comida_preferida
puts pessoa2.comida_preferida