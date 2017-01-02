#encoding: utf-8
#Iteradores
[1,2,3,4,5].each {|n| puts "O array contem o número #{n}"}
(1..5).each { |o| puts "O range contem o número #{o}"}
10.times {|e| puts "O número é #{e}"}
(1..21).step(2).each {|e| puts "O número é #{e}"}
colecao = %w(Uma lista de Strings para mostrar o uso de coleções com o for)
for str in colecao
	puts str
end
#Selecionado elementos
puts (1..10).select {|e| e.even?}
resultado = {1=>"um", 2=>"dois",3=>"tres"}.select {|chave,valor| valor.length>2}
puts resultado
puts (0..10).reject {|valor| valor.even?}
puts (0..10).map { |e| e*2 }
puts %w( um dois tres quatro cinco seis sete oito nove dez).map { |e| "O número é #{e}" }
resultado = {1=>"um", 2=>"dois",3=>"tres"}.map { |chave,valor| "A chave #{chave} com o valor #{valor}"  }
puts resultado
puts (0..10).all? {|valor| valor > 1}
puts (0..10).all? {|valor| valor > 0}
puts (0..10).any? {|valor| valor == 3}
puts (0..10).any? { |valor| valor == 30 }
puts (0..10).include?(3)
puts (0..10).include?(30)
puts (0..10).detect{|valor| valor > 0 && valor%4 == 0}
puts (0..10).max
puts (0..10).min
puts %w(joão maria antônio).max { |a, b| a.length <=> b.length}
puts %w(joão maria antônio).min { |a, b| a.length <=> b.length}
puts (0..10).inject{ |soma, valor| soma + valor }
puts (0..10).inject(100) {|soma, valor| soma + valor}
puts (0..10).inject(:+)
puts (0..10).inject(100,:+)
puts (0..10).partition { |valor| valor.even?  }
(0..10).each_with_index {|item, indice| puts "O item #{item} tem o indice #{indice}"}
puts %w(joão maria antônio).sort
puts %w(antônio maria joão).sort_by{|nome| nome.length}
puts (1..10).zip((11..20))
puts (1..10).zip((11..20),(21..30))
a = %w(john paul george ringo)
puts a.combination(2).to_a
a.combination(2) {|comb| puts "Combinação #{comb[0]} com #{comb[1]}"}
puts a.permutation(2).to_a
a.permutation(2){|perm| puts "Permutação #{perm[0]} com #{perm[1]}"}
beatles = %w(john paul george ringo)
stooges = %w(moe larry curly shemp)
puts beatles.product(stooges)
1.upto(5) { |n|  print n, " "}
5.downto(1) { |n| print n, " "  }
1.step(10, 2) { |n|  print n , " "}
