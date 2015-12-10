# -*- encoding: utf-8 -*-

$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'pronto/scss/version'
require 'English'

Gem::Specification.new do |s|
  s.name = 'pronto-scss'
  s.version = Pronto::ScssVersion::VERSION
  s.platform = Gem::Platform::RUBY
  s.author = 'Mindaugas Mozūras'
  s.email = 'mindaugas.mozuras@gmail.com'
  s.homepage = 'http://github.org/mmozuras/pronto-scss'
  s.summary = <<-EOF
    Pronto runner for SCSS-Lint, tool to help keep your SCSS clean and readable
  EOF

  s.licenses = ['MIT']
  s.required_ruby_version = '>= 1.9.3'
  s.rubygems_version = '1.8.23'

  s.files = `git ls-files`.split($RS).reject do |file|
    file =~ %r{^(?:
    spec/.*
    |Gemfile
    |Rakefile
    |\.rspec
    |\.gitignore
    |\.rubocop.yml
    |\.travis.yml
    )$}x
  end
  s.test_files = []
  s.extra_rdoc_files = ['LICENSE', 'README.md']
  s.require_paths = ['lib']

  s.add_runtime_dependency('scss_lint', '~> 0.43.2')
  s.add_runtime_dependency('pronto', '~> 0.5.0')
  s.add_development_dependency('rake', '~> 10.4')
  s.add_development_dependency('rspec', '~> 3.3')
  s.add_development_dependency('rspec-its', '~> 1.2')
end
