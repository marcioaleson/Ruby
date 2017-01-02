require "nokogiri"

doc = Nokogiri::XML(File.open("alunos2.xml"))
doc.search("aluno").each do |node|
	puts node.search("id").text+":"+node.search("nome").text
end