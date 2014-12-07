# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "dep-selector-libgecode"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["danielsdeleo"]
  s.date = "2014-06-19"
  s.description = "Installs a vendored copy of Gecode suitable for use with dep-selector"
  s.email = ["dan@getchef.com"]
  s.extensions = ["ext/libgecode3/extconf.rb"]
  s.files = ["ext/libgecode3/extconf.rb"]
  s.homepage = ""
  s.licenses = ["MIT", "Apache 2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.6"
  s.summary = "Installs a vendored copy of Gecode suitable for use with dep-selector"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.5"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.5"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
