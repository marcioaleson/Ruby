require "sequel"

Sequel.mysql(:user=>"aluno", :password=>"123456",:host=>"localhost", :database=>"aluno") do |con|
    p con
end

