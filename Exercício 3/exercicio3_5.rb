class ContaCorrente
    
    @@dados = Hash.new

    def initialize(dados = {})
    	@@dados = dados
    end

    def dados_correntista
    	@@dados
    end

    def alterar_nome(nome)
    	@@dados[:nome_correntista] = nome
    end

    def deposito(valor)
    	@@dados[:saldo]+=valor
    end

    def saque(valor)
    	@@dados[:saldo]-=valor
    end

end

conta = ContaCorrente.new(:numero_conta=>"111",:nome_correntista=>"Marcio",:saldo=>0)
puts conta.dados_correntista
conta.alterar_nome("Aleson")
puts conta.dados_correntista
conta.deposito(100.0)
puts conta.dados_correntista
conta.saque(20.0)
puts conta.dados_correntista
