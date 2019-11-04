lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "asyroyez_palindrome/version"

Gem::Specification.new do |spec|
  spec.name          = "asyroyez_palindrome"
  spec.version       = AsyroyezPalindrome::VERSION
  spec.authors       = ["Andrey Syroyezhkin"]
  spec.email         = ["andreysyroyezhkin@pm.me"]

  spec.summary       = %q{Palindrome detector}
  spec.description   = %q{A Ruby palindrome detector that works on strings and numbers}
  spec.homepage      = "https://github.com/asyroyez/palindrome_gem"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/asyroyez/palindrome_gem"
  spec.metadata["changelog_uri"] = "https://github.com/asyroyez/palindrome_gem/blob/master/README.md/"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
