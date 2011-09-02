# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "kim/version"

Gem::Specification.new do |s|
  s.name        = "kim"
  s.version     = Kim::VERSION
  s.authors     = ["Giancarlo Palavicini"]
  s.email       = ["kasthor@kasthor.com"]
  s.homepage    = ""
  s.summary     = %q{Improvements to several Ruby classes}
  s.description = %q{Handy additions to various ruby classes}

  s.rubyforge_project = "kim"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rspec'
end
