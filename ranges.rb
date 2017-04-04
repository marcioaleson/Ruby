range1 = (0..10)
range2 = (0...10)
range1.each {|numero| print "#{numero}"}
puts
range2.each {|numero| print "#{numero}"}
puts
range3 = ("a".."z")
range3.each{|letra| print "#{letra}"}
puts
puts range3.to_a #Convertendo range para array.
