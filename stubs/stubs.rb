class Calculadora
	def soma(a,b)
	  a+b
	end

	def subtrai(a,b)
	  a-b
	end
    #Stub de comportamento para método.
	describe "soma maluca" do
		it "deve ser igual a 3" do
			calculadora.stub :soma, 3 do
			calculadora.soma(1,1).must_equal 3
			end
		end
	end

	def media(colecao)
		val = colecao.valores
		val.inject(:+)/val.size.to_f
	end
end

