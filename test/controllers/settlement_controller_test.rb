require "test_helper"

class SettlementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get settlement_index_url
    assert_response :success
  end

  test "should get new" do
    get settlement_new_url
    assert_response :success
  end

  test "should get create" do
    get settlement_create_url
    assert_response :success
  end
end
