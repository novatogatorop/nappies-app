require 'test_helper'

class FacilitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get facilities_new_url
    assert_response :success
  end

  test "should get edit" do
    get facilities_edit_url
    assert_response :success
  end

end
