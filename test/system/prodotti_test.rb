require "application_system_test_case"

class ProdottiTest < ApplicationSystemTestCase
  setup do
    @prodotto = prodotti(:one)
  end

  test "visiting the index" do
    visit prodotti_url
    assert_selector "h1", text: "Prodotti"
  end

  test "creating a Prodotto" do
    visit prodotti_url
    click_on "New Prodotto"

    fill_in "Descrizione", with: @prodotto.descrizione
    fill_in "Nome", with: @prodotto.nome
    fill_in "Prezzo", with: @prodotto.prezzo
    click_on "Create Prodotto"

    assert_text "Prodotto was successfully created"
    click_on "Back"
  end

  test "updating a Prodotto" do
    visit prodotti_url
    click_on "Edit", match: :first

    fill_in "Descrizione", with: @prodotto.descrizione
    fill_in "Nome", with: @prodotto.nome
    fill_in "Prezzo", with: @prodotto.prezzo
    click_on "Update Prodotto"

    assert_text "Prodotto was successfully updated"
    click_on "Back"
  end

  test "destroying a Prodotto" do
    visit prodotti_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prodotto was successfully destroyed"
  end
end
