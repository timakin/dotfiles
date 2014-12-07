# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "berkshelf"
  s.version = "3.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jamie Winsor", "Josiah Kiehl", "Michael Ivey", "Justin Campbell", "Seth Vargo"]
  s.date = "2014-11-13"
  s.description = "Manages a Cookbook's, or an Application's, Cookbook dependencies"
  s.email = ["jamie@vialstudios.com", "jkiehl@riotgames.com", "michael.ivey@riotgames.com", "justin@justincampbell.me", "sethvargo@gmail.com"]
  s.executables = ["berks"]
  s.files = ["bin/berks"]
  s.homepage = "http://berkshelf.com"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.0.6"
  s.summary = "Manages a Cookbook's, or an Application's, Cookbook dependencies"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>, ["~> 2.3.4"])
      s.add_runtime_dependency(%q<berkshelf-api-client>, ["~> 1.2"])
      s.add_runtime_dependency(%q<buff-config>, ["~> 1.0"])
      s.add_runtime_dependency(%q<buff-extensions>, ["~> 1.0"])
      s.add_runtime_dependency(%q<buff-shell_out>, ["~> 0.1"])
      s.add_runtime_dependency(%q<cleanroom>, ["~> 1.0"])
      s.add_runtime_dependency(%q<faraday>, ["~> 0.9.0"])
      s.add_runtime_dependency(%q<minitar>, ["~> 0.5.4"])
      s.add_runtime_dependency(%q<retryable>, ["~> 1.3.3"])
      s.add_runtime_dependency(%q<ridley>, ["~> 4.0"])
      s.add_runtime_dependency(%q<solve>, ["~> 1.1"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.19"])
      s.add_runtime_dependency(%q<octokit>, ["~> 3.0"])
      s.add_runtime_dependency(%q<celluloid>, ["~> 0.16.0"])
      s.add_runtime_dependency(%q<celluloid-io>, ["~> 0.16.1"])
      s.add_development_dependency(%q<aruba>, ["~> 0.6"])
      s.add_development_dependency(%q<chef-zero>, ["~> 1.5.0"])
      s.add_development_dependency(%q<fuubar>, ["~> 1.1"])
      s.add_development_dependency(%q<rake>, ["~> 0.9"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<spork>, ["~> 0.9"])
      s.add_development_dependency(%q<test-kitchen>, ["~> 1.2"])
      s.add_development_dependency(%q<webmock>, ["~> 1.11"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
    else
      s.add_dependency(%q<addressable>, ["~> 2.3.4"])
      s.add_dependency(%q<berkshelf-api-client>, ["~> 1.2"])
      s.add_dependency(%q<buff-config>, ["~> 1.0"])
      s.add_dependency(%q<buff-extensions>, ["~> 1.0"])
      s.add_dependency(%q<buff-shell_out>, ["~> 0.1"])
      s.add_dependency(%q<cleanroom>, ["~> 1.0"])
      s.add_dependency(%q<faraday>, ["~> 0.9.0"])
      s.add_dependency(%q<minitar>, ["~> 0.5.4"])
      s.add_dependency(%q<retryable>, ["~> 1.3.3"])
      s.add_dependency(%q<ridley>, ["~> 4.0"])
      s.add_dependency(%q<solve>, ["~> 1.1"])
      s.add_dependency(%q<thor>, ["~> 0.19"])
      s.add_dependency(%q<octokit>, ["~> 3.0"])
      s.add_dependency(%q<celluloid>, ["~> 0.16.0"])
      s.add_dependency(%q<celluloid-io>, ["~> 0.16.1"])
      s.add_dependency(%q<aruba>, ["~> 0.6"])
      s.add_dependency(%q<chef-zero>, ["~> 1.5.0"])
      s.add_dependency(%q<fuubar>, ["~> 1.1"])
      s.add_dependency(%q<rake>, ["~> 0.9"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<spork>, ["~> 0.9"])
      s.add_dependency(%q<test-kitchen>, ["~> 1.2"])
      s.add_dependency(%q<webmock>, ["~> 1.11"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
    end
  else
    s.add_dependency(%q<addressable>, ["~> 2.3.4"])
    s.add_dependency(%q<berkshelf-api-client>, ["~> 1.2"])
    s.add_dependency(%q<buff-config>, ["~> 1.0"])
    s.add_dependency(%q<buff-extensions>, ["~> 1.0"])
    s.add_dependency(%q<buff-shell_out>, ["~> 0.1"])
    s.add_dependency(%q<cleanroom>, ["~> 1.0"])
    s.add_dependency(%q<faraday>, ["~> 0.9.0"])
    s.add_dependency(%q<minitar>, ["~> 0.5.4"])
    s.add_dependency(%q<retryable>, ["~> 1.3.3"])
    s.add_dependency(%q<ridley>, ["~> 4.0"])
    s.add_dependency(%q<solve>, ["~> 1.1"])
    s.add_dependency(%q<thor>, ["~> 0.19"])
    s.add_dependency(%q<octokit>, ["~> 3.0"])
    s.add_dependency(%q<celluloid>, ["~> 0.16.0"])
    s.add_dependency(%q<celluloid-io>, ["~> 0.16.1"])
    s.add_dependency(%q<aruba>, ["~> 0.6"])
    s.add_dependency(%q<chef-zero>, ["~> 1.5.0"])
    s.add_dependency(%q<fuubar>, ["~> 1.1"])
    s.add_dependency(%q<rake>, ["~> 0.9"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<spork>, ["~> 0.9"])
    s.add_dependency(%q<test-kitchen>, ["~> 1.2"])
    s.add_dependency(%q<webmock>, ["~> 1.11"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
  end
end
