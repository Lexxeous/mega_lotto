# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mega_lotto/version"

Gem::Specification.new do |spec|
  spec.name          = "mega_lotto_benchmark"
  spec.version       = MegaLotto::VERSION
  spec.authors       = ["Alex Gibson"]
  spec.email         = ["agibson@gibsonusa.net"]

  spec.summary       = "Generates & benchmarks random lottery numbers."
  spec.description   = "Generates & benchmarks random lottery numbers."
  spec.homepage      = "https://github.com/Lexxeous/mega_lotto"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org/" if spec.respond_to?(:metadata)
  raise "RubyGems 2.0 or newer is required to protect against public gem pushes." unless spec.respond_to?(:metadata)

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-rails"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
