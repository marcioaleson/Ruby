#encoding: utf-8
require './testmod.rb'

class TestCls 
	 include TestMod
end

t = TestCls.new
t.instance_method
TestCls.class_method