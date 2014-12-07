# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cleanroom"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Seth Vargo"]
  s.date = "2014-08-12"
  s.description = "Ruby is an excellent programming language for creating and managing custom DSLs, but how can you securely evaluate a DSL while explicitly controlling the methods exposed to the user? Our good friends instance_eval and instance_exec are great, but they expose all methods - public, protected, and private - to the user. Even worse, they expose the ability to accidentally or intentionally alter the behavior of the system! The cleanroom pattern is a safer, more convenient, Ruby-like approach for limiting the information exposed by a DSL while giving users the ability to write awesome code!"
  s.email = "sethvargo@gmail.com"
  s.homepage = "https://github.com/sethvargo/cleanroom"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.0.6"
  s.summary = "(More) safely evaluate Ruby DSLs with cleanroom"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
