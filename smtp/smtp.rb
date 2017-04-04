#encoding: utf-8
require "net/smtp"
require "highline/import"

from = "marcioaleson@gmail.com"
pass = ask("Digite a sua senha:") {|q| q.echo = "*"}
to = "marcioaleson@gmail.com"

msg =<<FIM
From: #{from}
Subject: Teste de SMTP no Ruby
Apenas um teste de envio de e-mail no Ruby.
Tchau!
FIM

smtp = Net::SMTP.new("smtp.gmail.com",587)
smtp.enable_starttls

begin
	smtp.start("localhost",from,pass,:plain) do |smtp|
		puts "Conexão aberta!"
		smtp.send_message(msg,from,to)
		puts "Mensagem enviado com sucesso!"
	end
rescue Exception => e
	puts "Erro: #{e}"
	puts e.backtrace	
end
