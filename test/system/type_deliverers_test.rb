require "application_system_test_case"

class TypeDeliverersTest < ApplicationSystemTestCase
  setup do
    @type_deliverer = type_deliverers(:one)
  end

  test "visiting the index" do
    visit type_deliverers_url
    assert_selector "h1", text: "Type Deliverers"
  end

  test "creating a Type deliverer" do
    visit type_deliverers_url
    click_on "New Type Deliverer"

    fill_in "Description", with: @type_deliverer.description
    click_on "Create Type deliverer"

    assert_text "Type deliverer was successfully created"
    click_on "Back"
  end

  test "updating a Type deliverer" do
    visit type_deliverers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @type_deliverer.description
    click_on "Update Type deliverer"

    assert_text "Type deliverer was successfully updated"
    click_on "Back"
  end

  test "destroying a Type deliverer" do
    visit type_deliverers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type deliverer was successfully destroyed"
  end
end
