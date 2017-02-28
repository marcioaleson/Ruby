require 'test/unit'
require 'mocha/test_unit'

class Enterprise
    def initialize(dilithium)
    	@dilithium = dilithium
    end

    def go(warp_factor)
    	warp_factor.times {@dilithium.nuke(:anti_matter)}
    end
end

class EnterpriseTest < Test::Unit::TestCase
    def test_should_doldly_go
    	dilithium = mock()
    	dilithium.expects(:nuke).with(:anti_matter).at_least_once 
    	enterprise = Enterprise.new(dilithium)
    	enterprise.go(2)
    end
end