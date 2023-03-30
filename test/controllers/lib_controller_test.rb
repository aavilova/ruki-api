require "test_helper"

class LibControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lib_index_url
    assert_response :success
  end
end
