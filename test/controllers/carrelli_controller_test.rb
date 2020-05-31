require 'test_helper'

class CarrelliControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrello = carrelli(:one)
  end

  test "should get index" do
    get carrelli_url
    assert_response :success
  end

  test "should get new" do
    get new_carrello_url
    assert_response :success
  end

  test "should create carrello" do
    assert_difference('Carrello.count') do
      post carrelli_url, params: { carrello: {  } }
    end

    assert_redirected_to carrello_url(Carrello.last)
  end

  test "should show carrello" do
    get carrello_url(@carrello)
    assert_response :success
  end

  test "should get edit" do
    get edit_carrello_url(@carrello)
    assert_response :success
  end

  test "should update carrello" do
    patch carrello_url(@carrello), params: { carrello: {  } }
    assert_redirected_to carrello_url(@carrello)
  end

  test "should destroy carrello" do
    assert_difference('Carrello.count', -1) do
      delete carrello_url(@carrello)
    end

    assert_redirected_to carrelli_url
  end
end
