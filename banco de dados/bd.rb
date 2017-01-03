require "rubygems"
require "sequel"
require "mysql"

Sequel.mysql(:user=>"root", :password=>"abcd1234",:host=>"localhost", :database=>"alunos") do |con|
    p con
end

