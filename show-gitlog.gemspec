# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'show-gitlog/version'

Gem::Specification.new do |spec|
  spec.name          = 'show-gitlog'
  spec.version       = ShowGitlog::VERSION
  spec.authors       = ['foostan']
  spec.email         = ['foostan27@gmail.com']
  spec.description   = %q{Show git commit logs}
  spec.summary       = %q{Show git commit logs}
  spec.homepage      = 'https://github.com/foostan/show-gitlog'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0.0'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'fuubar', '~> 2.0.0.rc1'
  spec.add_development_dependency 'spring'
  spec.add_development_dependency 'coveralls'

  spec.add_dependency 'thor'
end
