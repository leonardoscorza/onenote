require 'test_helper'

class TagsControllerTest < ActionDispatch::IntegrationTest
  test "should get add_to_note" do
    get tags_add_to_note_url
    assert_response :success
  end

  test "should get remove_from_note" do
    get tags_remove_from_note_url
    assert_response :success
  end

end
