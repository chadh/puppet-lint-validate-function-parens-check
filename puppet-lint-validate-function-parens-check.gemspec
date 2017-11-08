Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-validate-function-parens-check'
  spec.version     = '1.0.0'
  spec.homepage    = 'https://github.com/chadh/puppet-lint-validate-function-parens-check'
  spec.license     = 'MIT'
  spec.author      = 'Chad Huneycutt'
  spec.email       = 'chad.huneycutt@gmail.com'
  spec.files       = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*',
    'spec/**/*',
  ]
  spec.test_files  = Dir['spec/**/*']
  spec.summary     = 'puppet-lint validate function parentheses check'
  spec.description = <<-EOF
    Extends puppet-lint to ensure that certain functions have parens
    around arguments
  EOF

  spec.add_dependency             'puppet-lint', '>= 1.0', '< 3.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'simplecov'
end
