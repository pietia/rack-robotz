# -*- encoding: utf-8 -*-

$:.unshift File.expand_path('../lib', __FILE__)
require 'rack/robotz/version'

Gem::Specification.new do |s|
  s.name          = 'rack-robotz'
  s.version       = Rack::Robotz::VERSION
  s.summary       = 'Serve a robots.txt file dynamically.'

  s.authors        = ['John Labovitz', 'Piotr Gęga']
  s.email          = ['johnl@johnlabovitz.com', 'pietia@appgrinder.pl']
  s.description   = %q{
    Rack application to serve a robots.txt file dynamically.    
  }
  s.homepage      = 'http://github.com/pietia/rack-robotz'

  s.add_dependency 'rack'
  s.add_development_dependency 'gem-release'
  s.add_development_dependency 'rake'

  s.files        = Dir.glob('{bin,lib,test}/**/*') + %w(README.textile)
  s.require_path = 'lib'
end