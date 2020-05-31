require "application_system_test_case"

class UtentiTest < ApplicationSystemTestCase
  setup do
    @utente = utenti(:one)
  end

  test "visiting the index" do
    visit utenti_url
    assert_selector "h1", text: "Utenti"
  end

  test "creating a Utente" do
    visit utenti_url
    click_on "New Utente"

    fill_in "Email", with: @utente.email
    fill_in "Nome", with: @utente.nome
    click_on "Create Utente"

    assert_text "Utente was successfully created"
    click_on "Back"
  end

  test "updating a Utente" do
    visit utenti_url
    click_on "Edit", match: :first

    fill_in "Email", with: @utente.email
    fill_in "Nome", with: @utente.nome
    click_on "Update Utente"

    assert_text "Utente was successfully updated"
    click_on "Back"
  end

  test "destroying a Utente" do
    visit utenti_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Utente was successfully destroyed"
  end
end
