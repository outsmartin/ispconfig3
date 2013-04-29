# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'ispconfig3/version'

Gem::Specification.new do |s|
  s.name          = "ispconfig3-ruby"
  s.version       = Isp3::VERSION
  s.authors       = ["Martin Schneider"]
  s.email         = ["info@outsmartin.de"]
  s.homepage      = "https://github.com/outsmartin/ispconfig3-ruby"
  s.summary       = "Remote Control your ispconfig3 with ruby"
  s.description   = "Gem allows remote control of ispconfig3"

  s.files         = `git ls-files app lib`.split("\n")
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.rubyforge_project = '[none]'
  s.add_dependency('savon')
end
