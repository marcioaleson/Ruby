require "rubygems"
require "open-uri"
require "nokogiri"

doc = Nokogiri::HTML(open("http://uol.com.br"))
puts doc.search("h1").map {|elemento| elemento.text}