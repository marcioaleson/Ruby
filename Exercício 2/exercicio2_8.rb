puts "Digite o preço do produto 1:"
preço1 = gets.to_f
puts "Digite o preço do produto 2:"
preço2 = gets.to_f
puts "Digite o preço do produto 3:"
preço3 = gets.to_f
preços = [preço1,preço2,preço3]
puts "O produto indicado para você é: #{preços.min}"