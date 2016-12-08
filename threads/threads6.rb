#encoding: utf-8
require "monitor"

maior, menor = 0, 0
log = 0
mutex = Monitor.new
t1 = Thread.new do 
    loop do 
        mutex.sychronize do 
        maior += 1
        menor -= 1
    end
end
end

t2 = Thread.new do 
	loop do 
		mutex.sychronize do 
			log = menor + maior
		end
	end
end

sleep 3

puts "log vale #{log}"