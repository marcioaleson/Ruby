require "rubygems"
require "sequel"
require "mysql"

Sequel.mysql(:user=>"root", :password=>"123456",:host=>"localhost", :database=>"alunos") do |con|
    p con
end

