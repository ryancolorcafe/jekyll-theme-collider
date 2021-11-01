# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-collider"
  spec.version       = "0.1.4"
  spec.authors       = ["Ryan Brown"]
  spec.email         = ["ryancolorcafe@gmail.com"]

  spec.summary       = "A simple blog using jekyll-paginate-v2 and particles.js"
  spec.homepage      = "https://github.com/ryancolorcafe/jekyll-theme-collider"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.9.1"
  spec.add_runtime_dependency "jekyll-paginate-v2", "~> 1.9.4"
  spec.add_runtime_dependency "jekyll-feed", "~> 0"
  spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1.0"

  spec.add_development_dependency "bundler", "~> 2.2.10"
  spec.add_development_dependency "rake", "~> 12.0"
end
