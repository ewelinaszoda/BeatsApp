require 'test_helper'

class FestivalControllerTest < ActionDispatch::IntegrationTest
  test "should get find" do
    get festival_find_url
    assert_response :success
  end

end
