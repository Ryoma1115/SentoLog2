require 'test_helper'

class Admins::OyutypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_oyutypes_index_url
    assert_response :success
  end

  test "should get edit" do
    get admins_oyutypes_edit_url
    assert_response :success
  end

end
