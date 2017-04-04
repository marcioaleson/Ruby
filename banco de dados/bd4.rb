# encoding: utf-8
require "rubygems"
require "sequel"
require "mysql2"
Sequel.connect('mysql2://root:abcd1234@localhost/alunos') do |con|
puts con[:alunos].where(:id=>4).update(:nome=>"Mário")
end