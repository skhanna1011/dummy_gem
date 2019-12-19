lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dummy_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "dummy_gem"
  spec.version       = DummyGem::VERSION
  spec.authors       = ["Shivam Khanna"]
  spec.email         = ["hello@skhanna.io"]

  spec.summary       = %q{Dummy Gem Structure}
  spec.description   = %q{Empty Gem Structure which can be used to make configureable gems}
  spec.homepage      = "https://github.com/skhanna1011/dummy_gem"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://notsoallowedtopushgems.com"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/skhanna1011/dummy_gem/src"
    spec.metadata["changelog_uri"] = "https://github.com/skhanna1011/dummy_gem/commits"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '~> 2.6'
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end