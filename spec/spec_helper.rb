ENV['RAILS_ENV'] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'rspec/pride'

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

# Load factories from FactoryGirl
FactoryGirl.find_definitions

RSpec.configure do |config|
  # Include FactoryGirl mixin for syntax
  config.include FactoryGirl::Syntax::Methods

  # Prohibit using the should syntax
  config.expect_with :rspec do |spec|
    spec.syntax = :expect
  end
end
