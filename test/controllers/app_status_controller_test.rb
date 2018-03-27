require 'test_helper'

class AppStatusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_status_index_url
    assert_response :success
  end

end
