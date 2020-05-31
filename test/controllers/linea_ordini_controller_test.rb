require 'test_helper'

class LineaOrdiniControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linea_ordine = linea_ordini(:one)
  end

  test "should get index" do
    get linea_ordini_url
    assert_response :success
  end

  test "should get new" do
    get new_linea_ordine_url
    assert_response :success
  end

  test "should create linea_ordine" do
    assert_difference('LineaOrdine.count') do
      post linea_ordini_url, params: { linea_ordine: { carrello_id: @linea_ordine.carrello_id, prodotto_id: @linea_ordine.prodotto_id } }
    end

    assert_redirected_to linea_ordine_url(LineaOrdine.last)
  end

  test "should show linea_ordine" do
    get linea_ordine_url(@linea_ordine)
    assert_response :success
  end

  test "should get edit" do
    get edit_linea_ordine_url(@linea_ordine)
    assert_response :success
  end

  test "should update linea_ordine" do
    patch linea_ordine_url(@linea_ordine), params: { linea_ordine: { carrello_id: @linea_ordine.carrello_id, prodotto_id: @linea_ordine.prodotto_id } }
    assert_redirected_to linea_ordine_url(@linea_ordine)
  end

  test "should destroy linea_ordine" do
    assert_difference('LineaOrdine.count', -1) do
      delete linea_ordine_url(@linea_ordine)
    end

    assert_redirected_to linea_ordini_url
  end
end
