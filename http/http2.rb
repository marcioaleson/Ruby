require "open-uri"

resposta = open("http://uol.com.br")
puts resposta.read.scan(/<h1>.*<\/h1>/)