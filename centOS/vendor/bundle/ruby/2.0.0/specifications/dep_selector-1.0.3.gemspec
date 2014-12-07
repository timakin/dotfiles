# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "dep_selector"
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Christopher Walters", "Mark Anderson"]
  s.date = "2014-04-22"
  s.description = "Given packages, versions, and a dependency graph, find a valid assignment of package versions"
  s.email = ["dev@getchef.com"]
  s.extensions = ["ext/dep_gecode/extconf.rb"]
  s.files = ["ext/dep_gecode/extconf.rb"]
  s.homepage = "http://github.com/opscode/dep-selector"
  s.licenses = ["Apache v2"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.requirements = ["gecode, version 3.5 or greater", "g++"]
  s.rubygems_version = "2.0.6"
  s.summary = "Given packages, versions, and a dependency graph, find a valid assignment of package versions"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>, ["~> 1.9"])
      s.add_runtime_dependency(%q<dep-selector-libgecode>, ["~> 1.0"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14"])
      s.add_development_dependency(%q<solve>, ["~> 0.8"])
    else
      s.add_dependency(%q<ffi>, ["~> 1.9"])
      s.add_dependency(%q<dep-selector-libgecode>, ["~> 1.0"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, ["~> 2.14"])
      s.add_dependency(%q<solve>, ["~> 0.8"])
    end
  else
    s.add_dependency(%q<ffi>, ["~> 1.9"])
    s.add_dependency(%q<dep-selector-libgecode>, ["~> 1.0"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, ["~> 2.14"])
    s.add_dependency(%q<solve>, ["~> 0.8"])
  end
end
