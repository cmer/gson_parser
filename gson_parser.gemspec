# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gson_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "gson_parser"
  spec.version       = GsonParser::VERSION
  spec.authors       = ["Carl Mercier"]
  spec.email         = ["carl@carlmercier.com"]

  spec.summary       = %q{Simple GSON parser for Ruby}
  spec.description   = %q{Simple GSON parser for Ruby}
  spec.homepage      = "http://github.com/cmer/gson_parser"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
