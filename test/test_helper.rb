ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...

  	def sign_in_as(user, password)
  		# this line cause error
		# post login_path, session: {emai: user.email, password: password}
		post login_path, params: {session: {email: user.email, password: password}}
	end

end
