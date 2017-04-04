require "rubygems"
require "zip"
require "fileutils"

my_zip = "teste.zip"
File.delete(my_zip) if File.exists?(my_zip)

Zip::File.open(my_zip,true) do |zipfile|
	Dir.glob("[0-9]*.txt") do |file|
		puts "Zipando #{file} "
		zipfile.add("txts/#{file}",file)
	end
end

Zip::File.open(my_zip) do |zipfile|
	zipfile.each do |file|
		dir = File.dirname(file.name)
		puts "Descompactando #{file.name} para #{dir}"
		FileUtils.mkpath(dir)if !File.exists?(dir)
		zipfile.extract(file.name,file.name) do |entry,file|
			puts "Arquivo #{file} existe, apagando ..."
			File.delete(file)
		end
	end
end
