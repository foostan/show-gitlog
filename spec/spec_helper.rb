require 'coveralls'
Coveralls.wear!

require 'rspec'
require 'guard/rspec'

RSpec.configure do |c|
  c.mock_with :rspec
end
