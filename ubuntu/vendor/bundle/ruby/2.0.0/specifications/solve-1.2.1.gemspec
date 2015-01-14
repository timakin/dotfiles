# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "solve"
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jamie Winsor", "Andrew Garson", "Thibaud Guillaume-Gentil"]
  s.date = "2014-07-18"
  s.description = "A Ruby version constraint solver"
  s.email = ["jamie@vialstudios.com", "agarson@riotgames.com", "thibaud@thibaud.me"]
  s.homepage = "https://github.com/berkshelf/solve"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.1")
  s.rubygems_version = "2.0.6"
  s.summary = "A Ruby version constraint solver implementing Semantic Versioning 2.0.0-rc.1"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<semverse>, ["~> 1.1"])
      s.add_runtime_dependency(%q<dep_selector>, ["~> 1.0"])
    else
      s.add_dependency(%q<semverse>, ["~> 1.1"])
      s.add_dependency(%q<dep_selector>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<semverse>, ["~> 1.1"])
    s.add_dependency(%q<dep_selector>, ["~> 1.0"])
  end
end
