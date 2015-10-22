# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pretty_photo_portfolio/version'

Gem::Specification.new do |spec|
  spec.name          = "pretty_photo_portfolio"
  spec.version       = PrettyPhotoPortfolio::VERSION
  spec.authors       = ["Sahidur Rahman Suman"]
  spec.email         = ["suman5040@gmail.com"]

  spec.summary       = %q{Rails Portofio with Pretty Photo jQuery Plugin}
  spec.description   = %q{Rails Portofio with Pretty Photo jQuery Plugin.}
  spec.homepage      = "https://github.com/suman5040/pretty_photo_portfolio"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://github.com/suman5040/pretty_photo_portfolio"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8.4"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "jquery-rails"
  spec.add_development_dependency "bootstrap-sass", "~> 3.3.3"
end
