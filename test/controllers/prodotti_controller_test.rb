require 'test_helper'

class ProdottiControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prodotto = prodotti(:one)
  end

  test "should get index" do
    get prodotti_url
    assert_response :success
  end

  test "should get new" do
    get new_prodotto_url
    assert_response :success
  end

  test "should create prodotto" do
    assert_difference('Prodotto.count') do
      post prodotti_url, params: { prodotto: { descrizione: @prodotto.descrizione, nome: @prodotto.nome, prezzo: @prodotto.prezzo } }
    end

    assert_redirected_to prodotto_url(Prodotto.last)
  end

  test "should show prodotto" do
    get prodotto_url(@prodotto)
    assert_response :success
  end

  test "should get edit" do
    get edit_prodotto_url(@prodotto)
    assert_response :success
  end

  test "should update prodotto" do
    patch prodotto_url(@prodotto), params: { prodotto: { descrizione: @prodotto.descrizione, nome: @prodotto.nome, prezzo: @prodotto.prezzo } }
    assert_redirected_to prodotto_url(@prodotto)
  end

  test "should destroy prodotto" do
    assert_difference('Prodotto.count', -1) do
      delete prodotto_url(@prodotto)
    end

    assert_redirected_to prodotti_url
  end
end
