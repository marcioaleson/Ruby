require "thread"

items = []
lock = Mutex.new
cond = ConditionVariable.new
lomit = 0

produtor = Thread.new do 
    loop do 
        lock.synchronize do 
            qtde = rand(50)
            next if qtde == 0
            puts "Produzido #{qtde} item(s)"
            items = Array.new(qtde, "Item")
            cond.wait(lock)
            puts "Consumo efetuado!"
            puts "-"*25
            limit += 1
        end
        break if limit >5
    end
end

condumidor = Thread.new do 
    loop do 
    	luck.synchronize do
    		if items.length > 0
    			puts "Condumindo #{items.length} item(s)"
    			items = []
    		end
    		cond.signal
    	end
    end
end

produtor.join