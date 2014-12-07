# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "retryable"
  s.version = "1.3.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nikita Fedyashev", "Carlo Zottmann", "Chu Yeow"]
  s.date = "2014-09-05"
  s.description = "Kernel#retryable, allow for retrying of code blocks."
  s.email = "loci.master@gmail.com"
  s.homepage = "http://github.com/nfedyashev/retryable"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.6"
  s.summary = "Kernel#retryable, allow for retrying of code blocks."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
