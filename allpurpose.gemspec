# -*- encoding: utf-8 -*-
require File.expand_path('../lib/allpurpose/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Craig Sullivan"]
  gem.email         = ["craig@melbourne-systems.com"]
  gem.description   = %q{Get a freight cost estimate from AllPurpose Removals and Storage}
  gem.summary       = %q{This gem queries the AllPupose Removals and Storage web service to get a freight quote for shipping items. AllPurpose assumes shipping from Brisbane Metro area only.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "allpurpose"
  gem.require_paths = ["lib"]
  gem.version       = Allpurpose::VERSION

  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'turn'
  gem.add_development_dependency 'rake'

  gem.add_dependency 'httparty'

end