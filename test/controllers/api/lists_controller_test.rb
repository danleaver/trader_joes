require 'test_helper'

class Api::ListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_lists_index_url
    assert_response :success
  end

  test "should get show" do
    get api_lists_show_url
    assert_response :success
  end

  test "should get new" do
    get api_lists_new_url
    assert_response :success
  end

  test "should get edit" do
    get api_lists_edit_url
    assert_response :success
  end

end
