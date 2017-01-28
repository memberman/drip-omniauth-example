require 'test_helper'

class OmniauthCallbacksControllerTest < ActionDispatch::IntegrationTest
  test "should get callback" do
    get omniauth_callbacks_callback_url
    assert_response :success
  end

end
