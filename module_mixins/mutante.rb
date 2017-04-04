#encoding: utf-8
require './humano.rb'
require './ave.rb'

class Mutante < Humano
include Ave
end
mutante = Mutante.new
mutante.come
mutante.dorme
mutante.conecta_na_web
mutante.voa