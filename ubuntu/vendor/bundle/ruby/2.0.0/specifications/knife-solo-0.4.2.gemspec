# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "knife-solo"
  s.version = "0.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mat Schaffer"]
  s.date = "2014-06-06"
  s.description = "Handles bootstrapping, running chef solo, rsyncing cookbooks etc"
  s.email = "mat@schaffer.me"
  s.homepage = "http://matschaffer.github.io/knife-solo/"
  s.post_install_message = "Thanks for installing knife-solo!\n\nIf you run into any issues please let us know at:\n  https://github.com/matschaffer/knife-solo/issues\n\nIf you are upgrading knife-solo please uninstall any old versions by\nrunning `gem clean knife-solo` to avoid any errors.\n\nSee http://bit.ly/CHEF-3255 for more information on the knife bug\nthat causes this."
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.6"
  s.summary = "A collection of knife plugins for dealing with chef solo"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<berkshelf>, [">= 3.0.0.beta.2"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<ffi>, ["< 1.9.1"])
      s.add_development_dependency(%q<fog>, [">= 0"])
      s.add_development_dependency(%q<librarian-chef>, [">= 0"])
      s.add_development_dependency(%q<minitest>, ["~> 4.7"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<parallel>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
      s.add_runtime_dependency(%q<chef>, [">= 10.12"])
      s.add_runtime_dependency(%q<net-ssh>, ["< 3.0", ">= 2.2.2"])
      s.add_runtime_dependency(%q<erubis>, ["~> 2.7.0"])
    else
      s.add_dependency(%q<berkshelf>, [">= 3.0.0.beta.2"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<ffi>, ["< 1.9.1"])
      s.add_dependency(%q<fog>, [">= 0"])
      s.add_dependency(%q<librarian-chef>, [">= 0"])
      s.add_dependency(%q<minitest>, ["~> 4.7"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<parallel>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<coveralls>, [">= 0"])
      s.add_dependency(%q<chef>, [">= 10.12"])
      s.add_dependency(%q<net-ssh>, ["< 3.0", ">= 2.2.2"])
      s.add_dependency(%q<erubis>, ["~> 2.7.0"])
    end
  else
    s.add_dependency(%q<berkshelf>, [">= 3.0.0.beta.2"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<ffi>, ["< 1.9.1"])
    s.add_dependency(%q<fog>, [">= 0"])
    s.add_dependency(%q<librarian-chef>, [">= 0"])
    s.add_dependency(%q<minitest>, ["~> 4.7"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<parallel>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<coveralls>, [">= 0"])
    s.add_dependency(%q<chef>, [">= 10.12"])
    s.add_dependency(%q<net-ssh>, ["< 3.0", ">= 2.2.2"])
    s.add_dependency(%q<erubis>, ["~> 2.7.0"])
  end
end
