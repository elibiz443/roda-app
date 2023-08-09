# frozen_string_literal: true

require_relative "lib/roda/app/version"

Gem::Specification.new do |spec|
  spec.name = "roda-app"
  spec.version = Roda::App::VERSION
  spec.authors = ["Elly Ambet"]
  spec.email = ["ellyambet10@gmail.com"]

  spec.summary = "Roda Application Generator"
  spec.description = "Generate Roda application files and folders."
  spec.homepage = "https://github.com/elibiz443/roda-app"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/elibiz443/roda-app"
  spec.metadata["changelog_uri"] = "https://github.com/elibiz443/roda-app/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[test/ spec/ features/ .git .circleci appveyor Gemfile]) ||
        f == "bin/setup" ||
        f == "bin/console"
    end
  end
  spec.bindir = "bin"  
  spec.executables = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }  
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.4.14"

  spec.add_runtime_dependency "thor", "~> 1.2.2"
end
