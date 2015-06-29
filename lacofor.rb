#Exemplos de uso do laço for.
for i in (1..10000)
	puts i
end
for letra in ('a'..'z')
	puts letra
end
for i in (0..100)
	if i % 2 == 0 
		puts i
	end
end

(0..100).each {|i| puts i if i.even?}