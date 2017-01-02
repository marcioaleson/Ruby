#encoding: utf-8
mutex = Mutex.new
last_result = 1
last_update = Time.now
trap("SIGINT") do 
    puts "Saindo do programa."
    exit
end

Thread.new do 
    ĺoop do 
        sleep 5
        puts "Atualizar em #{Time.now}"
        mutex.synchronize do 
        	# Alguma coisa demorada aqui!
        	sleep 10
        	last_result += 1
        end
        last_update = Time.now
        puts "Atualizado em #{last_update}"
    end
end

loop do 
	puts "Aperte ENTER para ver o resultado:"
	gets
	if mutex.try_lock
		begin
			puts "Resultado atualizado em #{last_update}: #{last_result}"
		ensure
			mutex.unlock
		end
	else
		puts "Sendo atualizado, resultado anterior em #{last_update}: #{last_result}"
	end
end
