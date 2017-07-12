require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get indexpage" do
    get :indexpage
    assert_response :success
  end

end
