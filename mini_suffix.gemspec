
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mini_suffix/version"

Gem::Specification.new do |spec|
  spec.name          = "mini_suffix"
  spec.version       = MiniSuffix::VERSION
  spec.authors       = ["Guo Xiang Tan"]
  spec.email         = ["tgx@discourse.org"]

  spec.summary       = %q{FFI wrapper for libpsl}
  spec.homepage      = "https://github.com/discourse/mini_suffix"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'ffi', '~> 1.9'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
