# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'druzy/utils/version'

Gem::Specification.new do |spec|
  spec.name          = "druzy-utils"
  spec.version       = Druzy::Utils::VERSION
  spec.authors       = ["Jonathan Le Greneur"]
  spec.email         = ["jonathan.legreneur@free.fr"]

  spec.summary       = %q{Some utils}
  spec.description   = %q{Some utils I use}
  spec.homepage      = "https://github.com/druzy/ruby-druzy-utils"
  spec.license       = "MIT"

  spec.files         = `find lib -type f`.split("\n")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
