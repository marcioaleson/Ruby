# Essa é a classe base para todos os carros que vamos
# criar no nosso programa. A partir dela criamos carros
# de marcas específicas.
# Autor: Márcio Áleson
#Licença :: GPL

class Carro
    attr_reader :marca, :modelo, :tanque
    attr_accessor :cor

    # Parãmetro obrigatório para criar o carro
    # Não se esqueça de que todo carro vai ter os custos de:
    # * IPVA
    # * Seguro obrigatório
    # * Seguro
    # * Manutenção

    def initialize(marca, modelo, cor, tanque)
      @marca = marca
      @modelo = modelo
      @cor = cor
      @tanque = tanque
    end

    # Converte  o carro e muam representação mais legível
    def to_s
      "Marca:#{@marca}, Modelo:#{@modelo}, Cor:#{@cor}, Tanque:#{@tanque}."
    end
end
