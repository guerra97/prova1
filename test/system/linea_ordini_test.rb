require "application_system_test_case"

class LineaOrdiniTest < ApplicationSystemTestCase
  setup do
    @linea_ordine = linea_ordini(:one)
  end

  test "visiting the index" do
    visit linea_ordini_url
    assert_selector "h1", text: "Linea Ordini"
  end

  test "creating a Linea ordine" do
    visit linea_ordini_url
    click_on "New Linea Ordine"

    fill_in "Carrello", with: @linea_ordine.carrello_id
    fill_in "Prodotto", with: @linea_ordine.prodotto_id
    click_on "Create Linea ordine"

    assert_text "Linea ordine was successfully created"
    click_on "Back"
  end

  test "updating a Linea ordine" do
    visit linea_ordini_url
    click_on "Edit", match: :first

    fill_in "Carrello", with: @linea_ordine.carrello_id
    fill_in "Prodotto", with: @linea_ordine.prodotto_id
    click_on "Update Linea ordine"

    assert_text "Linea ordine was successfully updated"
    click_on "Back"
  end

  test "destroying a Linea ordine" do
    visit linea_ordini_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Linea ordine was successfully destroyed"
  end
end
