# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "datatables-rails"
  spec.version       = "1.10.7.0"
  spec.authors       = ["Sascha Vincent Kurowski"]
  spec.email         = ["svkurowski@gmail.com"]
  spec.summary       = %q{DataTables assets for Rails.}
  spec.homepage      = "https://github.com/svkurowski/datatables-rails"
  spec.license       = "MIT"

  spec.files         = Dir["{lib,app}/**/*"] + ["LICENSE.txt", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.1"
  spec.add_dependency "sass-rails", ">= 3.1.1"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
