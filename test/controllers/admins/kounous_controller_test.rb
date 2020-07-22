require 'test_helper'

class Admins::KounousControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_kounous_index_url
    assert_response :success
  end

  test "should get edit" do
    get admins_kounous_edit_url
    assert_response :success
  end

end
