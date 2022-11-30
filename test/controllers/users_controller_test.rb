require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get username" do
    get users_username_url
    assert_response :success
  end
end
