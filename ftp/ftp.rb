#encoding: utf-8
require "net/ftp"

host = "ftp.mozilla.org"
user = "anonymous"
pass = "marcioaelson@gmail.com"
file = "README"

begin
	Net::FTP.open(host) do |ftp|
		puts "Cenexão FTP aberta ..."
		ftp.login(user,pass)
		puts "Requisitando arquivo ..."
		ftp.chdir("pub")
		ftp.get(file)
		puts "Download efetuado ..."
		puts File.read(file)
	end
rescue Exception => e
	puts "ERRO: #{e}" 
end