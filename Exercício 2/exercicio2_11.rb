puts "Digite a sua nota:"
nota = gets.to_f
   while !((0..10).member?(nota))
     puts "Digite a sua nota:"
     nota = gets.to_f
    end
