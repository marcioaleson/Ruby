# encoding: utf-8
require "rubygems"
require "sequel"
require "mysql2"
Sequel.connect('mysql2://root:abcd1234@localhost/alunos') do |con|
rows = con[:alunos].all
puts "#{rows.size} registros recuperados"
rows.each {|row| puts "id: #{row[:id]} nome: #{row[:nome]}"}
end