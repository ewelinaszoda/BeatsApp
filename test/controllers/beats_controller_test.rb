require 'test_helper'

class BeatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beats_index_url
    assert_response :success
  end

end
