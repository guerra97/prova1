require "application_system_test_case"

class CarrelliTest < ApplicationSystemTestCase
  setup do
    @carrello = carrelli(:one)
  end

  test "visiting the index" do
    visit carrelli_url
    assert_selector "h1", text: "Carrelli"
  end

  test "creating a Carrello" do
    visit carrelli_url
    click_on "New Carrello"

    click_on "Create Carrello"

    assert_text "Carrello was successfully created"
    click_on "Back"
  end

  test "updating a Carrello" do
    visit carrelli_url
    click_on "Edit", match: :first

    click_on "Update Carrello"

    assert_text "Carrello was successfully updated"
    click_on "Back"
  end

  test "destroying a Carrello" do
    visit carrelli_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carrello was successfully destroyed"
  end
end
