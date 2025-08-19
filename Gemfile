
source 'https://rubygems.org'

ruby '3.3.5'
gem 'rails', '~> 7.1.0'
gem 'sqlite3', '~> 1.6'
gem 'puma', '~> 6.0'
gem 'webrick'
gem 'ostruct'

# Use modern JavaScript with importmaps (default in Rails 7)
# gem 'importmap-rails'

# Use jbuilder for JSON APIs
gem 'jbuilder', '~> 2.0'

# Use redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'


# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', '~> 6.0'
  gem 'capybara', '>= 2.15'
  gem 'database_cleaner-active_record'
end

group :development do
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end
