# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ffi-yajl"
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Lamont Granquist"]
  s.date = "2014-11-23"
  s.description = "Ruby FFI wrapper around YAJL 2.x"
  s.email = "lamont@getchef.com"
  s.executables = ["ffi-yajl-bench"]
  s.extensions = ["ext/ffi_yajl/ext/encoder/extconf.rb", "ext/ffi_yajl/ext/parser/extconf.rb"]
  s.extra_rdoc_files = ["README.md", "LICENSE"]
  s.files = ["bin/ffi-yajl-bench", "README.md", "LICENSE", "ext/ffi_yajl/ext/encoder/extconf.rb", "ext/ffi_yajl/ext/parser/extconf.rb"]
  s.homepage = "http://github.com/opscode/ffi-yajl"
  s.licenses = ["Apache-2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.6"
  s.summary = "Ruby FFI wrapper around YAJL 2.x"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 10.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.99"])
      s.add_development_dependency(%q<pry>, ["~> 0.9"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.8.3"])
      s.add_development_dependency(%q<mime-types>, ["~> 1.16"])
      s.add_runtime_dependency(%q<ffi>, ["~> 1.5"])
      s.add_runtime_dependency(%q<libyajl2>, ["~> 1.2"])
    else
      s.add_dependency(%q<rake>, ["~> 10.1"])
      s.add_dependency(%q<rspec>, ["~> 2.99"])
      s.add_dependency(%q<pry>, ["~> 0.9"])
      s.add_dependency(%q<rake-compiler>, ["~> 0.8.3"])
      s.add_dependency(%q<mime-types>, ["~> 1.16"])
      s.add_dependency(%q<ffi>, ["~> 1.5"])
      s.add_dependency(%q<libyajl2>, ["~> 1.2"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10.1"])
    s.add_dependency(%q<rspec>, ["~> 2.99"])
    s.add_dependency(%q<pry>, ["~> 0.9"])
    s.add_dependency(%q<rake-compiler>, ["~> 0.8.3"])
    s.add_dependency(%q<mime-types>, ["~> 1.16"])
    s.add_dependency(%q<ffi>, ["~> 1.5"])
    s.add_dependency(%q<libyajl2>, ["~> 1.2"])
  end
end
