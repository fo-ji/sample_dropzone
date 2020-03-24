require 'test_helper'

class OtherBoxesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get other_boxes_create_url
    assert_response :success
  end

end
