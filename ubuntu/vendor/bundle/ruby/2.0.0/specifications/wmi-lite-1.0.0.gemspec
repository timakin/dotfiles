# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "wmi-lite"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Edwards"]
  s.date = "2014-05-29"
  s.description = "A lightweight utility over win32ole for accessing basic WMI (Windows Management Instrumentation) functionality in the Microsoft Windows operating system. It has no runtime dependencies other than Ruby, so it can be used without concerns around dependency issues."
  s.email = ["dev@getchef.com"]
  s.homepage = "https://github.com/opscode/wmi-lite"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.6"
  s.summary = "A lightweight utility library for accessing basic WMI (Windows Management Instrumentation) functionality on Windows"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<pry-debugger>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<pry-debugger>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<pry-debugger>, [">= 0"])
  end
end
