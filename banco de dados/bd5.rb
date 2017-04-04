# encoding: utf-8
require "rubygems"
require "sequel"
require "mysql2"
Sequel.connect('mysql2://root:abcd1234@localhost/alunos') do |con|
con[:alunos].insert(:id=>5,:nome=>"Teste")
puts con[:alunos].where(:id=>5).delete
end