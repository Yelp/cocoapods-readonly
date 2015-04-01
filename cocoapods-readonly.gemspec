# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-readonly/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = "cocoapods-readonly"
  spec.version       = CocoapodsReadonly::VERSION
  spec.authors       = ["Mason Glidden"]
  spec.email         = ["mglidden@yelp.com"]
  spec.description   = %q{Makes CocoaPods source files read-only, so you can't accidently modify them.}
  spec.summary       = %q{Developers switching from submodules are used to modifying library source files from within Xcode. This locks those files as needed so Xcode warns you when attempting to edit.}
  spec.homepage      = "https://github.com/Yelp/cocoapods-readonly"
  spec.license       = "Apache"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
