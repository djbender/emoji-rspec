# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'emoji/rspec/version'

Gem::Specification.new do |gem|
  gem.name          = "emoji-rspec"
  gem.version       = Emoji::RSpec::VERSION
  gem.authors       = ["Aaron Kromer", "Derek Bender"]
  gem.description   = %q{Custom formatters for RSpec tests.}
  gem.summary       = %q{Emoji RSpec Formatters}
  gem.homepage      = "https://github.com/cupakromer/emoji-rspec"

  gem.add_dependency "rspec", '~> 2.13'
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"

  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
