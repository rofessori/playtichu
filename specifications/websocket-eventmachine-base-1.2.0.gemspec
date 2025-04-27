# -*- encoding: utf-8 -*-
# stub: websocket-eventmachine-base 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "websocket-eventmachine-base".freeze
  s.version = "1.2.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Bernard Potocki".freeze]
  s.date = "2016-02-15"
  s.description = "WebSocket base for Ruby client and server".freeze
  s.email = ["bernard.potocki@imanel.org".freeze]
  s.homepage = "http://github.com/imanel/websocket-eventmachine-base".freeze
  s.rubygems_version = "2.4.5.1".freeze
  s.summary = "WebSocket base for Ruby client and server".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<websocket>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<websocket-native>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<eventmachine>.freeze, ["~> 1.0".freeze])
end
