require 'test_helper'

class CircularsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get circulars_index_url
    assert_response :success
  end

end
