# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-theme-bas-style-kit'
  spec.version       = '0.3.0'
  spec.authors       = ['Felix Fennell']
  spec.email         = ['felnne@bas.ac.uk']

  spec.homepage      = 'https://github.com/antarctica/bas-style-kit-jekyll-theme'
  spec.summary       = 'Jekyll theme for the BAS Style Kit'
  spec.license       = 'Nonstandard'
  spec.metadata    = { 'source_code_uri' => 'https://github.com/antarctica/bas-style-kit-jekyll-theme.git' }

  spec.files         = ['screenshot.png', 'README.md', 'LICENSE.md', 'CONTRIBUTING.md', 'CHANGELOG.md', '_config.yml']
  spec.files         += Dir['_data/**/*'] + Dir['_includes/**/*'] + Dir['_layouts/**/*']

  spec.add_runtime_dependency 'jekyll', '~> 3.7', '>= 3.7.2'
  spec.add_runtime_dependency 'jekyll-data', '~> 1.0'
  spec.add_runtime_dependency 'jekyll-menus', '~> 0.6', '>= 0.6.0'
  spec.add_runtime_dependency 'jekyll-tidy', '~> 0.2', '>= 0.2.2'

  spec.add_development_dependency 'bundler', '~> 1.16', '>= 1.16.1'
  spec.add_development_dependency 'rake', '~> 12.3'
end
