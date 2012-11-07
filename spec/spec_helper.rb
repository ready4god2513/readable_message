require "rubygems"
require "bundler/setup"

require "readable_exception"

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter     = "documentation"
end