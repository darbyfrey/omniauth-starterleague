# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-starterleague/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Darby Frey"]
  gem.email         = ["darby@starterleague.com"]
  gem.description   = %q{OmniAuth OAuth 2.0 strategy for StarterLeague}
  gem.summary       = %q{OmniAuth OAuth 2.0 strategy for StarterLeague}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-starterleague"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Starterleague::VERSION

  gem.add_dependency 'omniauth', '>= 1.1.3'
  gem.add_dependency 'omniauth-oauth2', '>= 1.1.1'
end
