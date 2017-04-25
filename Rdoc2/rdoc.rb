# = Classe
# Esse é a classe para *todos* os carros que vamos
# criar no nosso programa. A partir dela criamos carros
# de _marcas específicas. Verifique o método to_s dessa
# classe Carro para uam descrição mais legível.
# ---
#
# == Sobre o autor e licença
#
# Autor:: Márcio Áleson
# Website:: http://marcioaleson.com.br
# Email:: mailto:marcioaleson@gmail.com
# licença::: +GLP+ clique aquio para ver mais[http://www.google.com]
#--
# Ei, ninguém deve ler isso.
#++
# Obrigado pela preferência.

class Carro
  attr_reader :marca, :modelo, :tanque
  attr_accessor :cor

  # Parâmetro obrigatório para criar o carro
  # Não se esqueça de que carro cai ter os custos de:
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

  # Converte  o carro em uma representação mais legível
  def to_s
    "Marca: #{@marca}, Modelo: #{@modelo}, Cor: #{@cor}, Tanque: #{@tanque}"
  end

# Classe de um _voquinho_, derivada da classe Carro.
class Fursac < Carro
  def ipva
    false    
  end
end
