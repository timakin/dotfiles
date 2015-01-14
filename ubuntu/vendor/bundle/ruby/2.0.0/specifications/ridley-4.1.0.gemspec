# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ridley"
  s.version = "4.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jamie Winsor", "Kyle Allan"]
  s.date = "2014-10-23"
  s.description = "A reliable Chef API client with a clean syntax"
  s.email = ["jamie@vialstudios.com", "kallan@riotgames.com"]
  s.homepage = "https://github.com/RiotGames/ridley"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.1")
  s.rubygems_version = "2.0.6"
  s.summary = "A reliable Chef API client with a clean syntax"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>, [">= 0"])
      s.add_runtime_dependency(%q<varia_model>, ["~> 0.4"])
      s.add_runtime_dependency(%q<buff-config>, ["~> 1.0"])
      s.add_runtime_dependency(%q<buff-extensions>, ["~> 1.0"])
      s.add_runtime_dependency(%q<buff-ignore>, ["~> 1.1"])
      s.add_runtime_dependency(%q<buff-shell_out>, ["~> 0.1"])
      s.add_runtime_dependency(%q<celluloid>, ["~> 0.16.0"])
      s.add_runtime_dependency(%q<celluloid-io>, ["~> 0.16.1"])
      s.add_runtime_dependency(%q<erubis>, [">= 0"])
      s.add_runtime_dependency(%q<faraday>, ["~> 0.9.0"])
      s.add_runtime_dependency(%q<hashie>, ["< 3.0.0", ">= 2.0.2"])
      s.add_runtime_dependency(%q<json>, [">= 1.7.7"])
      s.add_runtime_dependency(%q<mixlib-authentication>, [">= 1.3.0"])
      s.add_runtime_dependency(%q<net-http-persistent>, [">= 2.8"])
      s.add_runtime_dependency(%q<retryable>, [">= 0"])
      s.add_runtime_dependency(%q<semverse>, ["~> 1.1"])
      s.add_development_dependency(%q<buff-ruby_engine>, ["~> 0.1"])
    else
      s.add_dependency(%q<addressable>, [">= 0"])
      s.add_dependency(%q<varia_model>, ["~> 0.4"])
      s.add_dependency(%q<buff-config>, ["~> 1.0"])
      s.add_dependency(%q<buff-extensions>, ["~> 1.0"])
      s.add_dependency(%q<buff-ignore>, ["~> 1.1"])
      s.add_dependency(%q<buff-shell_out>, ["~> 0.1"])
      s.add_dependency(%q<celluloid>, ["~> 0.16.0"])
      s.add_dependency(%q<celluloid-io>, ["~> 0.16.1"])
      s.add_dependency(%q<erubis>, [">= 0"])
      s.add_dependency(%q<faraday>, ["~> 0.9.0"])
      s.add_dependency(%q<hashie>, ["< 3.0.0", ">= 2.0.2"])
      s.add_dependency(%q<json>, [">= 1.7.7"])
      s.add_dependency(%q<mixlib-authentication>, [">= 1.3.0"])
      s.add_dependency(%q<net-http-persistent>, [">= 2.8"])
      s.add_dependency(%q<retryable>, [">= 0"])
      s.add_dependency(%q<semverse>, ["~> 1.1"])
      s.add_dependency(%q<buff-ruby_engine>, ["~> 0.1"])
    end
  else
    s.add_dependency(%q<addressable>, [">= 0"])
    s.add_dependency(%q<varia_model>, ["~> 0.4"])
    s.add_dependency(%q<buff-config>, ["~> 1.0"])
    s.add_dependency(%q<buff-extensions>, ["~> 1.0"])
    s.add_dependency(%q<buff-ignore>, ["~> 1.1"])
    s.add_dependency(%q<buff-shell_out>, ["~> 0.1"])
    s.add_dependency(%q<celluloid>, ["~> 0.16.0"])
    s.add_dependency(%q<celluloid-io>, ["~> 0.16.1"])
    s.add_dependency(%q<erubis>, [">= 0"])
    s.add_dependency(%q<faraday>, ["~> 0.9.0"])
    s.add_dependency(%q<hashie>, ["< 3.0.0", ">= 2.0.2"])
    s.add_dependency(%q<json>, [">= 1.7.7"])
    s.add_dependency(%q<mixlib-authentication>, [">= 1.3.0"])
    s.add_dependency(%q<net-http-persistent>, [">= 2.8"])
    s.add_dependency(%q<retryable>, [">= 0"])
    s.add_dependency(%q<semverse>, ["~> 1.1"])
    s.add_dependency(%q<buff-ruby_engine>, ["~> 0.1"])
  end
end
