require 'test_helper'

class SimulatorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get simulator_index_url
    assert_response :success
  end

  test "should get show" do
    get simulator_show_url
    assert_response :success
  end

end
