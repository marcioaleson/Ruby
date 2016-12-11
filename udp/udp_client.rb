#encoding: utf-8
require "socket"

client = UDPSocket.open
client.connect("localhost",12345)
loop do 
	puts "Digite sua mensagem (quit termina, kill finaliza o servidor):"
	msg = gets
	client.send(msg,0)
	break unless !"kill,quit".include? msg.chomp
end
client.close

