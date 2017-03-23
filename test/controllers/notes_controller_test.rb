require 'test_helper'

class NotesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get notes_create_url
    assert_response :success
  end

  test "should get update" do
    get notes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get notes_destroy_url
    assert_response :success
  end

  test "should get index" do
    get notes_index_url
    assert_response :success
  end

  test "should get show" do
    get notes_show_url
    assert_response :success
  end

end
