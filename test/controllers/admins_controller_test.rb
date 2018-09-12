require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get admins_profile_url
    assert_response :success
  end

end
