puts "Digite o número de horas trabalhadas por mês:"
horas_mes = gets.to_i
puts "Digite o valor ganho por hora:"
valor_hora = gets.to_f
salario = valor_hora*horas_mes
puts "a - #{salario}"
puts "b - #{salario*0.8}"
puts "c - #{salario*0.5}"
descontos = (salario*0.08 + salario*0.11 + salario*0.05)
salario_liquido = salario - descontos
puts "O salário liquido é: #{salario_liquido}"
puts "Os descontos totalizam: #{descontos}"

