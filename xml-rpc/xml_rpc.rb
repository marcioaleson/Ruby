require "xmlrpc/server"

server = XMLRPC::Server.new(8081)

#Somando números
server.add_handler("soma") do |n1,n2|
	{"Resultado: "=> n1+n2}
end

#Dividindo e retornando o resto
server.add_handler("divide") do |n1,n2|
	{"Resultado: "=>n1/n2, "Resto: "=> n1%n2}
end
server.serve