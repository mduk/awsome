# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'awsome/version'

Gem::Specification.new do |spec|
  spec.name          = "awsome"
  spec.version       = Awsome::VERSION
  spec.authors       = ["Daniel Kendell"]
  spec.email         = ["daniel@kendell.org"]
  spec.summary       = %q{Awsome AWS queryer}
  spec.description   = %q{Awsome AWS queryer.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = [ 'awsome' ]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor'
  spec.add_dependency 'aws-sdk-core', '~> 2.0.1'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
end
