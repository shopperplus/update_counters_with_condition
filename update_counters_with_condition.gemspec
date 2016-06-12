# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'update_counters_with_condition/version'

Gem::Specification.new do |spec|
  spec.name          = "update_counters_with_condition"
  spec.version       = UpdateCountersWithCondition::VERSION
  spec.authors       = ["Hooopo"]
  spec.email         = ["hoooopo@gmail.com"]
  spec.summary       = %q{update counters with condition}
  spec.description   = %q{update counters with condition}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency 'activerecord', ">= 3.2"
end
