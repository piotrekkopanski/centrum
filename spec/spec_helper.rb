ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
require "capybara/rspec" 

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  ActiveRecord::Migration.maintain_test_schema!
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

end
