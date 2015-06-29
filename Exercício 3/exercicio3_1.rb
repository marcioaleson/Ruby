class Bola
	attr_accessor :cor  
	attr_reader :circunferencia, :material

	def initialize (cor,circunferencia,material)
		@cor = cor
		@circunferencia = circunferencia
		@material = material
	end

    def trocarCor (cor)
	  @cor = cor
    end

    def mostrarCor
	  puts cor
    end

    def to_s
    	puts "Cor: #{@cor} Circunferencia: #{@circunferencia} Material: #{@material}"
    end
end

bola = Bola.new(:preta,2,:plastico)
puts bola.to_s
bola.trocarCor(:amarelo)
puts bola.to_s

