require 'test_helper'

class UserCreateTest < ActionDispatch::IntegrationTest
  test "index and the create" do
    #step 1 go to homepacge
    get 'users'
    assert_response :success

    # step 2 click on "new user" link
    get 'users/new'
    assert_response :success

    #step 3 fill out the form to create a new user & submit it
    assert_difference("User.count") do
    	post_via_redirect "/users", user: { email: "ig@test.co", name: "Int Test"}
    end

    assert_match /\/users\/\d+/, path
    assert_equal 'User was successfully created.', flash[:notice]
  end
end
