# frozen_string_literal: true

require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'

if Rails.env.production?
  abort('The Rails environment is running in production mode!')
end

require 'rspec/rails'
require 'webmock/rspec'
require 'sidekiq/testing'

Sidekiq::Testing.inline!

Dir[Rails.root.join('spec/support/**/*.rb')].each do |file|
  require file
end

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

RSpec.configure do |config|
  config.fixture_path = Rails.root.join('/spec/fixtures')
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
