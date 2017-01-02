require "net/http"

host = Net::HTTP.new("uol.com.br",80)
resposta = host.get("/")
return if resposta.message != "OK"
puts resposta.body.scan(/<h1>.*<\/h1>/)
