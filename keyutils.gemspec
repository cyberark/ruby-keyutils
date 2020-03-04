# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'keyutils/version'

Gem::Specification.new do |spec|
  spec.name          = "keyutils"
  spec.version       = Keyutils::VERSION
  spec.authors       = ["Rafał Rzepecki"]
  spec.email         = ["divided.mind@gmail.com"]

  spec.summary       = %q{Wrapper for Linux keyutils library}
  spec.description   = %q{FFI-based wrapper for Linux keyutils library, providing idiomatic Ruby access to the kernel keyring.}
  spec.homepage      = "https://github.com/dividedmind/ruby-keyutils"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ffi", "~> 1.9"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
