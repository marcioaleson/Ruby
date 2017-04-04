# encoding: utf-8
require "socket"

TCPServer.open("localhost",8081) do |server|
	puts "Servidor iniciado!"
	loop do 
		puts "Aguardando conexão ..."
		con = server.accept
		puts "Conexão recebida!"
		con.puts Time.now
		con.close
	end
end
