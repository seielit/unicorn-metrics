# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unicorn_metrics/version'

Gem::Specification.new do |spec|
  spec.name          = "unicorn_metrics"
  spec.version       = UnicornMetrics::VERSION
  spec.authors       = ["Andy Dyrcz"]
  spec.email         = ["adyrcz@searshc.com"]
  spec.summary       = %q{Metrics library for Rack applications using a preforking http server (i.e., Unicorn) }
  spec.homepage      = "http://wiki.intra.sears.com/confluence/display/ODEVOPS/"
  spec.files         = Dir['lib/**/*.rb'] + Dir['test/*']
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_development_dependency('rake', '~> 10.1.0')
  spec.add_dependency('raindrops', '~> 0.13.0')
  spec.requirements << 'Preforking http server (i.e., Unicorn).'
  spec.required_ruby_version = '>= 1.9.3'
end
