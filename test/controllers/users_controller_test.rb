require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get add_note" do
    get users_add_note_url
    assert_response :success
  end

  test "should get remove_note" do
    get users_remove_note_url
    assert_response :success
  end

end
