require "test_helper"

class SettlementInputsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get settlement_inputs_new_url
    assert_response :success
  end

  test "should get create" do
    get settlement_inputs_create_url
    assert_response :success
  end
end
