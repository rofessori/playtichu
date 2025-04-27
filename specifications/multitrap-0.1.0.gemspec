# -*- encoding: utf-8 -*-
# stub: multitrap 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "multitrap".freeze
  s.version = "0.1.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kyrylo Silin".freeze]
  s.date = "2015-08-09"
  s.email = "silin@kyrylo.org".freeze
  s.homepage = "https://github.com/kyrylo/multitrap".freeze
  s.licenses = ["Zlib".freeze]
  s.rubygems_version = "1.8.23.2".freeze
  s.summary = "Allows Signal.trap to have multiple callbacks".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 3

  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec-wait>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<pry>.freeze, [">= 0".freeze])
end
