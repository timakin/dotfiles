# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "buff-ignore"
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Seth Vargo"]
  s.date = "2013-11-22"
  s.description = "Parse ignore files with Ruby"
  s.email = ["sethvargo@gmail.com"]
  s.homepage = "https://github.com/sethvargo/buff-ignore"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.6"
  s.summary = "A Ruby library for parsing lists of files and applying pattern matching exclusion (such as .gitignore)"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<cane>, ["~> 2.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.13"])
      s.add_development_dependency(%q<spork>, ["~> 0.9"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<cane>, ["~> 2.6"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.13"])
      s.add_dependency(%q<spork>, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<cane>, ["~> 2.6"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.13"])
    s.add_dependency(%q<spork>, ["~> 0.9"])
  end
end
