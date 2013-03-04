# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'rstat/version'

Gem::Specification.new do |s|
  s.name        = 'rstat'
  s.version     = Rstat::VERSION
  s.authors     = ['Sean Eshbaugh']
  s.email       = ['seaneshbaugh@gmail.com']
  s.homepage    = 'https://github.com/seaneshbaugh/rstat'
  s.summary     = %q{A Simple statistics gem.}
  s.description = %q{A Simple statistics gem.}

  s.rubyforge_project = 'rstat'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'rspec'
end
