# encoding: utf-8
require "rubygems"
require "sequel"
require "mysql2"

Sequel.connect('mysql2://root:abcd1234@localhost/alunos') do |con|
con.run("drop table if exists alunos")
sql = <<FIM
create table alunos (
id int(6) not null,
nome varchar(50) not null)
FIM
con.run(sql)
con[:alunos].insert(:id=>1,:nome=>'João')
con[:alunos].insert(:id=>2,:nome=>'José')
con[:alunos].insert(:id=>3,:nome=>'Antonio')
con[:alunos].insert(:id=>4,:nome=>'Maria')
end