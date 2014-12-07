# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "berkshelf-api-client"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jamie Winsor", "Michael Ivey", "Seth Vargo"]
  s.date = "2014-04-14"
  s.description = "API Client for communicating with a Berkshelf API server"
  s.email = ["jamie@vialstudios.com", "michael.ivey@riotgames.com", "sethvargo@gmail.com"]
  s.homepage = "http://berkshelf.com"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.0.6"
  s.summary = "API Client for communicating with a Berkshelf API server"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["~> 0.9.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<fuubar>, ["~> 1.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.13"])
      s.add_development_dependency(%q<spork>, ["~> 0.9"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
    else
      s.add_dependency(%q<faraday>, ["~> 0.9.0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<fuubar>, ["~> 1.1"])
      s.add_dependency(%q<rspec>, ["~> 2.13"])
      s.add_dependency(%q<spork>, ["~> 0.9"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
    end
  else
    s.add_dependency(%q<faraday>, ["~> 0.9.0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<fuubar>, ["~> 1.1"])
    s.add_dependency(%q<rspec>, ["~> 2.13"])
    s.add_dependency(%q<spork>, ["~> 0.9"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
  end
end
