Shoes.setup do
  gem 'json >= 1.1.1'
  gem 'activerecord'
end

require 'json'
require 'activerecord'

Shoes.app do
  @msg = para "ALL SYSTEMS GO"
  animate(20) { @msg.toggle }
end