10.must_be :<, 20
[].must_be_empty
"oi".must_be_instance_of String
1.must_be_kind_of Numeric
a = nil
a.must_be_nil
b = "oi"
b = a

a.must_be_same_as b
{}.must_be_silent
{puts "oi" }.must_be_silent
1.01.must_be_within_delta 1.02, 0.1
a.must_equal b
(0..10).must_include 5
"1".must_match /\d/
{puts "oi" }.must_output "oi\n"
{}.must_output "oi\n"
{1 + "um"}.must_raise TypeError
"oi".must_respond_to :upcase
must_send ["eustáqui", :slice, 3, 3]