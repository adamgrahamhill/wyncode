require 'test_helper'

class PokesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pokes_index_url
    assert_response :success
  end

  test "should get show" do
    get pokes_show_url
    assert_response :success
  end

end
