# frozen_string_literal: true

ENV["RAILS_ENV"] ||= "test"

require "minitest/autorun"
require "rails"
require "vindi"
require "vindi/engines/engine"

# Boot a minimal Rails application context for engines testing
class DummyApp < Rails::Application
  config.root = File.expand_path("../..", __FILE__)
  config.eager_load = false
  config.logger = Logger.new(nil)
  config.active_support.deprecation = :stderr
end

Rails.application.initialize!

# Require rails/test_help after app initialization
require "rails/test_help"

# Require checkout generator
require "generators/vindi/checkout_generator"
