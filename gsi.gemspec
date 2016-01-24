# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gsi/version'

Gem::Specification.new do |spec|
  spec.name          = "gsi"
  spec.version       = Gsi::VERSION
  spec.authors       = ["Benjamin Cavileer"]
  spec.email         = ["bcavileer@gmail.com"]

  spec.summary       = 'Green Storm Water Infrastructure'
  spec.description   = 'Library to compute green storm water infrastructure practices.'
  spec.homepage      = 'https://bcavileer.github.io/pwd/'
  spec.license       = "wtfpl"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
