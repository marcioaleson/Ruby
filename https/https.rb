require "net/https"
require "highline/import"

user = "user"
pass = ask("Digite a sua senha:") {|q| q.echo = "*"}

begin
	site = Net::HTTP.new("api.del.icio.us",443)
	site.user_ssl = true
	site.start do |http|
		req = Net::HTTP::Get.new('/v1/tags/get')
		req.basic_auth(user,pass)
		resposta = http.request(req)
		print resposta.body
	end
rescue Exception => e
	pust "ERRO: #{e}"
end