# frozen_string_literal: true

require_relative "lib/vindi/engines/version"

Gem::Specification.new do |spec|
  spec.name = "vindi-rails-engines"
  spec.version = Vindi::Engines::VERSION
  spec.authors = ["Wesley Lima"]
  spec.email = ["wesleyskap@gmail.com"]

  spec.summary = "Rails mountable UI Engines for Vindi checkout and payment screens."
  spec.description = "Encapsulates reusable front-end screens, checkout templates, and credit card tokenization components."
  spec.homepage = "https://github.com/wesleyskap/vindi-rails"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir["lib/**/*", "README.md", "LICENSE.txt"]
  spec.require_paths = ["lib"]

  spec.add_dependency "vindi-rails", ">= 0.2.0"
  spec.add_dependency "railties", ">= 6.0"
end
