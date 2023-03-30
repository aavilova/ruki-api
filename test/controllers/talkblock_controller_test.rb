require "test_helper"

class TalkblockControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get talkblock_index_url
    assert_response :success
  end
end
