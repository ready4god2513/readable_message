# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'readable_exception/version'

Gem::Specification.new do |gem|
  gem.name          = "readable_exception"
  gem.version       = ReadableException::VERSION
  gem.authors       = ["Brandon Hansen"]
  gem.email         = ["brandonh@ibethel.org"]
  gem.description   = %q{Prints out an exception message, class name, and backtrace to the console.}
  gem.summary       = %q{Prints out an exception message, class name, and backtrace to the console.}
  gem.homepage      = "https://github.com/ready4god2513/readable_exception"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
