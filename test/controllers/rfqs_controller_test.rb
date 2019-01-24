require 'test_helper'

class RfqsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rfqs_index_url
    assert_response :success
  end

  test "should get show" do
    get rfqs_show_url
    assert_response :success
  end

  test "should get new" do
    get rfqs_new_url
    assert_response :success
  end

  test "should get create" do
    get rfqs_create_url
    assert_response :success
  end

  test "should get edit" do
    get rfqs_edit_url
    assert_response :success
  end

  test "should get update" do
    get rfqs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get rfqs_destroy_url
    assert_response :success
  end

end
