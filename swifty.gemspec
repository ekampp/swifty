Gem::Specification.new do |s|
  s.name        = 'swifty'
  s.version     = File.read('./lib/VERSION').chomp
  s.licenses    = ['MIT']
  s.summary     = "Simple parsing of SWIFT messages"
  s.description = "Supports simple extension for customization of SWIFT message parsing."
  s.authors     = ["Emil Kampp"]
  s.email       = 'emil@kampp.me'
  s.files       = ["lib/swifty.rb"]
  s.homepage    = 'https://github.com/ekampp/swifty'
  s.required_ruby_version = '~> 2.2'

  s.add_runtime_dependency 'activesupport', '>= 4.2'
  s.add_runtime_dependency 'cmxl', '~> 0.1'
  s.add_development_dependency 'rspec', '~> 3.3'
end
