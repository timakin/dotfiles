# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "buff-config"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jamie Winsor", "Kyle Allan"]
  s.date = "2014-07-28"
  s.description = "A simple configuration class"
  s.email = ["jamie@vialstudios.com", "kallan@riotgames.com"]
  s.homepage = "https://github.com/RiotGames/buff-config"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.0.6"
  s.summary = "A simple configuration class"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<varia_model>, ["~> 0.4"])
      s.add_runtime_dependency(%q<buff-extensions>, ["~> 1.0"])
      s.add_development_dependency(%q<buff-ruby_engine>, ["~> 0.1"])
      s.add_development_dependency(%q<thor>, ["~> 0.18.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<fuubar>, [">= 0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-spork>, [">= 0"])
      s.add_development_dependency(%q<spork>, [">= 0"])
      s.add_development_dependency(%q<json_spec>, [">= 0"])
    else
      s.add_dependency(%q<varia_model>, ["~> 0.4"])
      s.add_dependency(%q<buff-extensions>, ["~> 1.0"])
      s.add_dependency(%q<buff-ruby_engine>, ["~> 0.1"])
      s.add_dependency(%q<thor>, ["~> 0.18.0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<fuubar>, [">= 0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<guard-spork>, [">= 0"])
      s.add_dependency(%q<spork>, [">= 0"])
      s.add_dependency(%q<json_spec>, [">= 0"])
    end
  else
    s.add_dependency(%q<varia_model>, ["~> 0.4"])
    s.add_dependency(%q<buff-extensions>, ["~> 1.0"])
    s.add_dependency(%q<buff-ruby_engine>, ["~> 0.1"])
    s.add_dependency(%q<thor>, ["~> 0.18.0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<fuubar>, [">= 0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<guard-spork>, [">= 0"])
    s.add_dependency(%q<spork>, [">= 0"])
    s.add_dependency(%q<json_spec>, [">= 0"])
  end
end
