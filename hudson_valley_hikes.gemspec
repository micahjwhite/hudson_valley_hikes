require_relative 'lib/hudson_valley_hikes/version'

Gem::Specification.new do |spec|
  spec.name          = "hudson_valley_hikes"
  spec.version       = HudsonValleyHikes::VERSION
  spec.authors       = ["micahjwhite"]
  spec.email         = ["micahjwhite@gmail.com"]

  spec.summary       = %q{short summary}
  spec.description   = %q{longer description}
  spec.homepage      = "http://www.url.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://www.url.com"
  spec.metadata["changelog_uri"] = "http://www.url.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri"
end
