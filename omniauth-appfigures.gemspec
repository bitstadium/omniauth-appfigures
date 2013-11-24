# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-appfigures/version"

# p OmniAuth::FiveHundredPx::VERSION
Gem::Specification.new do |s|
  s.name        = "omniauth-appfigures"
  s.version     = OmniAuth::AppFigures::VERSION
  s.authors     = ["Charlie White"]
  s.email       = ["charlie@triaged.co"]
  s.homepage    = "https://github.com/triaged/omniauth-appfigures"
  s.summary     = %q{OmniAuth strategy for AppFigures}
  s.description = %q{OmniAuth strategy for AppFigures}

  s.rubyforge_project = "omniauth-appfigures"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end
