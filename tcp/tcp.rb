require "socket"

TCPSocket.open("smtp.mail.yahoo.com",25) do |smtp|
	puts smtp.gets
	smtp.puts "EHLO google.com.br"
	puts smtp.gets
end
