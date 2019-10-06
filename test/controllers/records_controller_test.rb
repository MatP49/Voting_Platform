require 'test_helper'

class RecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get listen" do
    get records_listen_url
    assert_response :success
  end

end
