$LOAD_PATH.push File.expand_path("lib", __dir__)
require "eddy/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "eddy-rails"
  spec.version     = Eddy::Rails::VERSION
  spec.authors     = ["Clay Dunston"]
  spec.email       = ["dunstontc@gmail.com"]
  spec.homepage    = "https://github.com/tcd/eddy-rails"
  spec.summary     = "Rails integration for Eddy"
  spec.description = spec.summary
  spec.license     = "MIT"
  spec.required_ruby_version = ">= 2.3.0"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.1"
  spec.add_dependency "eddy", "~> 0.3.0"

  spec.add_development_dependency "pg"
end
