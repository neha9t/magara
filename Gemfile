source 'https://rubygems.org'

gem 'bcrypt',       '~> 3.1.7'
gem 'coffee-rails', '~> 4.2'
gem 'devise',       '~> 4.5.0'
gem 'high_voltage', '~> 3.1.0'
gem 'jbuilder',     '~> 2.5'
gem 'passenger',    '5.3.4', require: 'phusion_passenger/rack_handler'
gem 'pg',           '1.0.0'
gem 'rails',        '5.2.1'
gem 'sass-rails',   '~> 5.0'
gem 'uglifier',     '>= 1.3.0'
gem 'turbolinks',   '~> 5.2'

# Bootstrap
gem 'bootstrap',    '~> 4.1.3'
gem 'jquery-rails', '~> 4.3.3'
# Foundation for Emails
gem 'inky-rb', require: 'inky'
gem 'premailer-rails' # Stylesheet inlining for email

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 4.10'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 3.8'
end

group :development do
  gem 'listen',      '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'faker',     '>= 1.9.1'
  gem 'rubocop',   '~> 0.58.2', require: false
  gem 'rubocop-rspec'
  gem 'scss_lint', '~> 0.57.0', require: false
end

group :production do
  # Use Redis adapter to run Action Cable in production
  gem 'redis', '~> 4.0'
  gem 'sidekiq', '~> 5.2.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
