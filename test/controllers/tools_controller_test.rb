require "test_helper"

class ToolsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get tools_show_url
    assert_response :success
  end
end
