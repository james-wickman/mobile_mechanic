require 'test_helper'

class MechanicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mechanics_index_url
    assert_response :success
  end

  test "should get show" do
    get mechanics_show_url
    assert_response :success
  end

end
