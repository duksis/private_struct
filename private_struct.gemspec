# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'private_struct/version'

Gem::Specification.new do |spec|
  spec.name          = "private_struct"
  spec.version       = PrivateStruct::VERSION
  spec.authors       = ["Hugo Duksis"]
  spec.email         = ["duksis@gmail.com"]

  spec.summary       = %q{Struct that does not violate encapsulation by default.}
  spec.homepage      = "https://github.com/duksis/private_struct"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^test/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
