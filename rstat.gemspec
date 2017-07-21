require_relative 'lib/rstat/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'rstat'
  s.version     = Rstat::VERSION
  s.authors     = ['Sean Eshbaugh']
  s.email       = ['seaneshbaugh@gmail.com']
  s.homepage    = 'https://github.com/seaneshbaugh/rstat'
  s.summary     = 'A simple statistics gem.'
  s.description = 'A simple statistics gem.'
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  s.requirements  = ['none']

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'simplecov'
end
