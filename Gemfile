# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.3'

gem 'bootsnap', require: false
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rack-cors', '~> 2.0', '>= 2.0.0'
gem 'rails', '~> 7.0.8', '>= 7.0.8.1'
gem 'sqlite3', '~> 1.4'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'bullet'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rubocop-rails', '>= 2.20.0', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails', '>= 6.3.0'
  gem 'faker'
  gem 'rspec-rails', '~> 6.0.0'
  gem 'rspec-sidekiq', '>= 4.0.0'
  gem 'shoulda-matchers'
  gem 'timecop'
  gem 'webmock'
end
