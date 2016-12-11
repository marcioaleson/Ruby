#encoding: utf-8
require "socket"

TCPServer.open("localhost",8085) do |server|
	puts "Servidor iniciado!"
	loop do 
		puts "Aguardando conexão ..."
		con = server.accept
		rst = con.recv(1024).unpack("LA10A*")
		fix = rst[0]
		str = rst[1]

		hash = Marshal.load(rst[2])
		puts "#{fix.class}\t: #{fix}"
		puts "#{str.class}\t: #{str}"
		puts "#{hash.class}\t: #{hash}"
		con.close
	end
end
