require "application_system_test_case"

class EstabilishmentsTest < ApplicationSystemTestCase
  setup do
    @estabilishment = estabilishments(:one)
  end

  test "visiting the index" do
    visit estabilishments_url
    assert_selector "h1", text: "Estabilishments"
  end

  test "creating a Estabilishment" do
    visit estabilishments_url
    click_on "New Estabilishment"

    fill_in "Description", with: @estabilishment.description
    fill_in "State Registration", with: @estabilishment.state_registration
    click_on "Create Estabilishment"

    assert_text "Estabilishment was successfully created"
    click_on "Back"
  end

  test "updating a Estabilishment" do
    visit estabilishments_url
    click_on "Edit", match: :first

    fill_in "Description", with: @estabilishment.description
    fill_in "State Registration", with: @estabilishment.state_registration
    click_on "Update Estabilishment"

    assert_text "Estabilishment was successfully updated"
    click_on "Back"
  end

  test "destroying a Estabilishment" do
    visit estabilishments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estabilishment was successfully destroyed"
  end
end
