# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-simplicity"
  spec.version       = "0.1.2"
  spec.authors       = ["Ryan Brown"]
  spec.email         = ["ryancolorcafe@gmail.com"]

  spec.summary       = "A simple blog using jekyll-paginate-v2 and particles.js"
  spec.homepage      = "https://github.com/ryancolorcafe/jekyll-theme-simplicity"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"
  spec.add_runtime_dependency "jekyll-paginate-v2", "~> 1.7"
  spec.add_runtime_dependency "jekyll-feed", "~> 0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
