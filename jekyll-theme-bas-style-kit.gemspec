# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-bas-style-kit"
  spec.version       = "0.2.0"
  spec.authors       = ["Felix Fennell"]
  spec.email         = ["felnne@bas.ac.uk"]

  spec.summary       = "Jekyll theme implementing the BAS Style Kit"
  spec.homepage      = "https://gitlab.data.bas.ac.uk/BSK/bas-style-kit-jekyll-theme"
  spec.license       = "MIT"

  spec.files         = ["screenshot.png", "README.md", "LICENSE.md", "LICENSE-MIT.md", "CONTRIBUTING.md", "CHANGELOG.md"] 
  spec.files         += Dir['_data/**/*'] + Dir['_includes/**/*'] + Dir['_layouts/**/*'] + Dir['_sass/**/*'] + Dir['assets/**/*'] 

  spec.add_runtime_dependency "jekyll", "~> 3.4"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
