# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'viewerjs/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "viewerjs-rails"
  spec.version       = Viewerjs::Rails::VERSION
  spec.authors       = ["Praveen Kumar Sinha"]
  spec.email         = ["praveen.kumar.sinha@gmail.com"]
  spec.summary       = "Viewerjs for Rails asset"
  spec.description   = "Viewerjs's images, stylesheets and javascript files packed here to be used with Rails"
  spec.homepage      = "https://github.com/praveenkumarsinha/viewerjs-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
