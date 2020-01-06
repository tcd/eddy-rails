$LOAD_PATH.push File.expand_path("lib", __dir__)
require "eddy/rails/version"

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
  spec.metadata = {
    "homepage_uri" => spec.homepage,
    "source_code_uri" => spec.homepage,
    "changelog_uri" => "#{spec.homepage}/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}",
    "yard.run" => "yri", # use "yard" to build full HTML docs.
  }
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.add_development_dependency "pg"
  spec.add_development_dependency "rails", "~> 6.0.2", ">= 6.0.2.1"
  spec.add_development_dependency "eddy", "~> 0.4.0"
end
