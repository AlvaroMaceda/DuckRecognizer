require 'test_helper'

class RecognizerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recognizer_index_url
    assert_response :success
  end

end
