#encoding: utf-8
module TestMod
	module ClassMethods
		 def class_method
		 	 puts "Esse è o método da classe!"
		 end
	end

	def instance_method
         puts "Esse é um método de instância!"
    end
	
	def self.included(where)
		 where.extend(ClassMethods)
	end
end