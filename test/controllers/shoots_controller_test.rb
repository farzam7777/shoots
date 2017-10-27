require 'test_helper'

class ShootsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shoots_index_url
    assert_response :success
  end

end
