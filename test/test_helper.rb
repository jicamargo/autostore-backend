ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors, with: :threads)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

# Simula un usuario autenticado
def setup_auth
  @user = users(:one) # Toma un usuario de fixtures
  @token = JWT.encode({ id: @user.id }, Rails.application.credentials.secret_key_base)
end