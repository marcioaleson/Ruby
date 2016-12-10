p File.read("teste.txt")
p File.readlines("teste.txt")
f = File.open("teste.txt")
f.each do |linha|
	puts linha
end
f.close

File.open("teste.txt") do |arquivo|
	arquivo.each do |linha|
		puts linha
	end
end

File.open("teste.txt") do |arquivo|
	arquivo.each_byte do |byte|
        print "[#{byte}]"
    end
end

File.open("novo_teste.txt", "w") do |arquivo|
	arquivo << File.read("teste.txt")
end

