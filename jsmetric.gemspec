# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "version"

Gem::Specification.new do |s|
  s.name        = "jsmetric4java"
  s.version     = Jsmetric4Java::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nigel Fernandes"]
  s.email       = ["jsmetric@nigel.in"]
  s.homepage    = ""
  s.summary     = %q{Cyclometric complexity analyser for Javascript}
  s.description = %q{Cyclometric complexity analyser for Javascript}

  s.rubyforge_project = "jsmetric"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('therubyrhino', '1.72.7 ')
  s.add_dependency('bundler', '1.0.13 ')
  s.add_dependency('json', '1.5.1')
end
