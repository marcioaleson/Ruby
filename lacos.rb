# encoding: utf-8
i = 0
#while
while i < 5
	puts i
    i+=1	
end

#for
for i in (0...5)
    puts i
end

#break

for i in (0...5)
    break if i==3
    puts i
end

#next

for i in (0...5)
    next if i==3
    puts i
end

#until

x = 0
until x==5
	puts i
	i+=1
end

#redo

for i in (0...5)
    redo if i==3
    puts i
end