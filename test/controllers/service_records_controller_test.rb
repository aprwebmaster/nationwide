require 'test_helper'

class ServiceRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get service_records_index_url
    assert_response :success
  end

  test "should get show" do
    get service_records_show_url
    assert_response :success
  end

  test "should get create" do
    get service_records_create_url
    assert_response :success
  end

  test "should get new" do
    get service_records_new_url
    assert_response :success
  end

  test "should get edit" do
    get service_records_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get service_records_destroy_url
    assert_response :success
  end

end
