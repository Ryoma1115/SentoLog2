require 'test_helper'

class Users::OyutypesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users_oyutypes_show_url
    assert_response :success
  end

end
