require 'test/unit'
require 'mocha/test_unit'
require_relative "calculadora"


class CalculadoraTest < Test::Unit::TestCase

description "média" do
	it "deve ser igual a 2" do
		colecao = MiniTest::Mock.new
		colecao.expect :valores, [1,2,3]
		calculadora.media(colecao)
		colecao.verify
	end
end

end