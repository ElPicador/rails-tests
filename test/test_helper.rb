ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "capybara/rails"
require 'capybara/envjs'
require 'capybara/zombie'
require "factory_girl"
require 'akephalos'

# Capybara.default_driver = :akephalos
# Capybara.default_driver = :envjs
# Capybara.default_driver = :zombie
# Capybara.default_driver = :webkit

class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest
  include Capybara
end

