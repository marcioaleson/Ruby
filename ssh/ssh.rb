#encoding: utf-8
require "rubygems"
require "net/ssh"
require "highline/import"

host  = "uol.com.br"
user = "tag"
pass = ask("Digite a sua senha:") {|q| q.echo = "*"}

begin
	Net::SSH.start(host,user,:password=>pass) do |session|
		puts "Sessão SSH aberta!"
		session.open_channel do |channel|
			puts "Canal aberto!"
			channel.on_data do |ch,data|
				puts "> #{data}"
			end
			puts "Executando comando ..."
			channel.exec "ls -lah"
		end
		session.loop
	end
rescue Exception => e
	puts "ERRO: #{e}"
	puts e.backtrace
end