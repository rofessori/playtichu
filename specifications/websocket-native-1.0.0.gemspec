# -*- encoding: utf-8 -*-
# stub: websocket-native 1.0.0 ruby lib
# stub: ext/websocket_native_ext/extconf.rb

Gem::Specification.new do |s|
  s.name = "websocket-native".freeze
  s.version = "1.0.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Bernard Potocki".freeze]
  s.date = "2012-11-19"
  s.description = "Native Extension for WebSocket gem".freeze
  s.email = ["bernard.potocki@imanel.org".freeze]
  s.extensions = ["ext/websocket_native_ext/extconf.rb".freeze]
  s.files = ["ext/websocket_native_ext/extconf.rb".freeze]
  s.homepage = "http://github.com/imanel/websocket-ruby-native".freeze
  s.rubygems_version = "1.8.24".freeze
  s.summary = "Native Extension for WebSocket gem".freeze

  s.installed_by_version = "3.5.17".freeze if s.respond_to? :installed_by_version

  s.specification_version = 3

  s.add_development_dependency(%q<rspec>.freeze, ["~> 2.11".freeze])
  s.add_development_dependency(%q<rake-compiler>.freeze, [">= 0".freeze])
end
