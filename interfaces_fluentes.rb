#encoding: utf-8

class SQL 
     
     attr_reader :table, :conditions, :order

     def from(table)
          @table = table
          self
     end

     def where(cond)
     	 @conditions = cond
     end
     
     def order(order)
          @order = order		
     end

     def to_s
          "select * from #{@table} where #{@conditons} order by #{@order}"		
     end	
	
end

sql = SQL.new.from("carro").where("marca=Ford").order("modelo")
puts sql