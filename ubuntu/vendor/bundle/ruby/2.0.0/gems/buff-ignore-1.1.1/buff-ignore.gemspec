# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'buff/ignore/version'

Gem::Specification.new do |spec|
  spec.name          = 'buff-ignore'
  spec.version       = Buff::Ignore::VERSION
  spec.authors       = ['Seth Vargo']
  spec.email         = ['sethvargo@gmail.com']
  spec.description   = 'Parse ignore files with Ruby'
  spec.summary       = 'A Ruby library for parsing lists of files and applying pattern matching exclusion (such as .gitignore)'
  spec.homepage      = 'https://github.com/sethvargo/buff-ignore'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',   '~> 1.3'
  spec.add_development_dependency 'cane',      '~> 2.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec',     '~> 2.13'
  spec.add_development_dependency 'spork',     '~> 0.9'
end
