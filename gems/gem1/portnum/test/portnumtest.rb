require "test/unit"
require "#{File.expand_path(File.dirname(__FILE__))}/../lib/portnum.rb"

class PortNumTest < Test::Unit::TestCase
  def test_par
      assert_respond_to 1, :par?
  end

   def test_par_ok
     assert 2.par?
     assert !1.par?
   end

   def test_impar
     assert_respond_to 1, :impar?
   end

   def test_impar_ok
     assert 1.impar?
     assert !2.impar?
   end
   
 end
