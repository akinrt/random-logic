# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'random_logic/version'

Gem::Specification.new do |spec|
  spec.name          = "random_logic"
  spec.version       = RandomLogic::VERSION
  spec.authors       = ["akinrt"]
  spec.email         = ["aki.d.sc@gmail.com"]

  spec.summary       = %q{A random logic module provide various randomise calculation.}
  spec.description   = %q{A random logic module provide various randomise calculation.
  The japanese article written by ICS [JavaScript開発に役立つ重要なランダムの数式まとめ](https://ics.media/entry/11292) inspired me to write RandomLogic gem.}
  spec.homepage      = "https://github.com/akinrt/random_logic"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
