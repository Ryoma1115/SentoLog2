require 'test_helper'

class Users::KounousControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users_kounous_show_url
    assert_response :success
  end

end
