require "monitor"

class Threads7
    attr_reader :valor
    include MonitorMixin
    
    def initialize
    	@valor = 0
    	super
    end

    def incremente
    	synchronize do 
    		@valor = valor +1
    	end
    end  
		
end

class Threads7_2
    attr_reader :valor


	def initialize
		@valor = 0
	end

	def incremente
		@valor = valor + 1
	end
	
	
end

t1 = Threads7.new
t2 = Threads7_2.new
t2.extend(MonitorMixin)

t3 = Thread.new {100_000.times { t2.synchronize { t2.incremente }}}
t4 = Thread.new {100_000.times { t2.synchronize { t2.incremente }}}

t3.join
t4.join

puts t2.valor