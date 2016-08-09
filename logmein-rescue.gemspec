# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'logmein/rescue/version'

Gem::Specification.new do |spec|
  spec.name          = "logmein-rescue"
  spec.version       = LogMeIn::Rescue::VERSION
  spec.authors       = ["Thomas Stachl"]
  spec.email         = ["tstachl@salesforce.com"]

  spec.summary       = %q{LogMeIn Rescue API client}
  spec.description   = %q{This API client allows you to easily interact with LogMeIn Rescue.}
  spec.homepage      = "https://tstachl.github.io/logmein-rescue"
  spec.license       = "BSD 3-Clause License"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "pry", "~> 0.10"
end
