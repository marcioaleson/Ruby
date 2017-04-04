require 'mysql2'
client = Mysql2::Client.new(host: "localhost", username: "root", password: "abcd1234", database: "alunos")
p client


