require 'test_helper'

class ServiceCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get service_comments_index_url
    assert_response :success
  end

  test "should get show" do
    get service_comments_show_url
    assert_response :success
  end

  test "should get new" do
    get service_comments_new_url
    assert_response :success
  end

  test "should get edit" do
    get service_comments_edit_url
    assert_response :success
  end

end
