# encoding: utf-8

vezes3 = Proc.new {|valor| valor*3}

puts vezes3.call(3)
puts vezes3.call(4)
puts vezes3.call(5)

vezes5 = lambda { |valor| valor*5 }

puts vezes5.call(3)
puts vezes5.call(4)
puts vezes5.call(5)
puts (1..5).map &vezes5

pnew = Proc.new {|x,y| puts x+y}
lnew = lambda {|x,y| puts x+y}

puts pnew.call(2,5)
puts lnew.call(2,5,6)
