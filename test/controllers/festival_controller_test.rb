require 'test_helper'

class FestivalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get festival_index_url
    assert_response :success
  end

  test "should get show" do
    get festival_show_url
    assert_response :success
  end

  test "should get new" do
    get festival_new_url
    assert_response :success
  end

  test "should get create" do
    get festival_create_url
    assert_response :success
  end

  test "should get delete" do
    get festival_delete_url
    assert_response :success
  end

end
