# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-theme-bas-style-kit'
  spec.version       = '0.10.0-develop'
  spec.authors       = ['Felix Fennell']
  spec.email         = ['felnne@bas.ac.uk']

  spec.homepage      = 'https://github.com/antarctica/bas-style-kit-jekyll-theme'
  spec.summary       = 'Jekyll theme for the BAS Style Kit'
  spec.license       = 'Nonstandard'
  spec.metadata    = { 'source_code_uri' => 'https://github.com/antarctica/bas-style-kit-jekyll-theme.git' }

  spec.files         = ['screenshot.png', 'README.md', 'LICENSE.md', 'CONTRIBUTING.md', 'CHANGELOG.md', '_config.yml']
  spec.files         += Dir['_data/**/*'] + Dir['_includes/**/*'] + Dir['_layouts/**/*'] + Dir['_sass/**/*'] + Dir['assets/**/*']

  spec.add_runtime_dependency 'jekyll', '~> 4.1'
  spec.add_runtime_dependency 'jekyll-data', '~> 1.1'
  spec.add_runtime_dependency 'jekyll-menus', '~> 0.6'
  spec.add_runtime_dependency 'jekyll-tidy', '~> 0.2'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
end
