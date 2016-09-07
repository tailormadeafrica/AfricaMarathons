# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-bookings'
  s.authors            = 'Tailor Made Africa'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Bookings forms-extension for Refinery CMS'
  s.date              = '2016-05-12'
  s.summary           = 'Bookings forms-extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',     '~> 2.0.3'
  s.add_dependency             'refinerycms-settings', '~> 2.0.0'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing',  '~> 2.0.3'
end
