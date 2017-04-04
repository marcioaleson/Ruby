#encoding: utf-8

class CaixaDeParafusos
	 protected
	 attr_writer :quantidade

     public
     attr_reader :quantidade

	 def initialize(quantidade)
		 @quantidade = quantidade
	 end

	 def to_s
	     "Quantidade de parafusos na caixa #{self.object_id}: #{@quantidade}."
     end

     def +(outra)
          CaixaDeParafusos.new(@quantidade+outra.quantidade)
          @quantiade = 0
          outra.quantidade = 0
     end

     def /(quantidade)
          caixas = Array.new(@quantidade/quantidade,quantidade)
          caixas << @quantidade%quantidade if @quantidade%quantidade > 0
          @quantidade = 0
          caixas.map { |quantidade| CaixaDeParafusos.new(quantidade)  }		
     end	
end

caixa1 = CaixaDeParafusos.new(10)
caixa2 = CaixaDeParafusos.new(20)
caixa3 = caixa1 + caixa2

puts caixa1
puts caixa2
puts caixa3
puts caixa3/8