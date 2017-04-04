# encoding: utf-8
require "builder"

alunos = {1 => "João", 2 => "José", 3 => "Antonio", 4 => "Maria"}

xml = Builder::XmlMarkup.new(:indent => 2)
xml.alunos do 
alunos.each do |key, value|
		xml.aluno do 
			xml.id key
			xml.nome value
		end
end
end


File.open("alunos2.xml","w") do |file|
	file << xml.target!
end

