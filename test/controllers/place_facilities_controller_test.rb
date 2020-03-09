require 'test_helper'

class PlaceFacilitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get place_facilities_new_url
    assert_response :success
  end

end
