# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "libyajl2"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["lamont-granquist"]
  s.date = "2014-11-22"
  s.description = "Installs a vendored copy of libyajl2 for distributions which lack it"
  s.email = ["lamont@getchef.com"]
  s.extensions = ["ext/libyajl2/extconf.rb"]
  s.files = ["ext/libyajl2/extconf.rb"]
  s.homepage = "https://github.com/opscode/libyajl2-gem"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.6"
  s.summary = "Installs a vendored copy of libyajl2 for distributions which lack it"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.9"])
      s.add_development_dependency(%q<mime-types>, ["~> 1.16"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14"])
      s.add_development_dependency(%q<ffi>, ["~> 1.9"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rake-compiler>, ["~> 0.9"])
      s.add_dependency(%q<mime-types>, ["~> 1.16"])
      s.add_dependency(%q<rspec>, ["~> 2.14"])
      s.add_dependency(%q<ffi>, ["~> 1.9"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rake-compiler>, ["~> 0.9"])
    s.add_dependency(%q<mime-types>, ["~> 1.16"])
    s.add_dependency(%q<rspec>, ["~> 2.14"])
    s.add_dependency(%q<ffi>, ["~> 1.9"])
  end
end
