require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "the truth" do
		test_user = users(:two)
		puts "This is a test user: ", test_user
		# say_hello
		assert_equal test_user.name, "Adam"
	end

	test "user email never blank" do
		u = User.new
		u.email = nil
		assert_not u.save, "User emails should never be nil"
	end

	def say_hello
		puts "Hello from your user_test.rb file!"
	end
end
