#encoding: utf-8
require "net/pop"
require "highline/import"

user = "marcioaleson@gmail.com"
pass = ask("Digite a sua senha:"){|q| q.echo="*"}
pop = Net::POP3.new("pop.gmail.com",995)
pop.enable_ssl(OpneSSL::SSL::VERIFY_NONE)
begin
	pop.start(user, pass) do |pop|
		if pop.mail.empty?
			puts "Sem e-mails!"
			return
		end
		pop.each do |msg|
			puts msg.header
		end
	end
rescue Exception => e
	puts "ERRO: #{e}"
end