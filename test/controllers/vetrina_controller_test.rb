require 'test_helper'

class VetrinaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vetrina_index_url
    assert_response :success
  end

end
