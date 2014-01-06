# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "textext/rails/version"

Gem::Specification.new do |s|
  s.name        = "textext-rails"
  s.version     = Textext::Rails::VERSION
  s.authors     = ["Jeff Pollard"]
  s.email       = ["jeff.pollard@gmail.com"]
  s.homepage    = "https://github.com/Fluxx/textext-rails"
  s.summary     = %q{Adds the jQuery TextExt plugin to the Rails 3.1 asset pipeline}
  s.description = %q{Adds the jQuery TextExt plugin to the Rails 3.1 asset pipeline}

  s.rubyforge_project = "textext-rails"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  # specify any dependencies here
  s.add_development_dependency "rake"
end
