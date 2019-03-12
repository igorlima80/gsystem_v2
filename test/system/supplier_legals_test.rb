require "application_system_test_case"

class SupplierLegalsTest < ApplicationSystemTestCase
  setup do
    @supplier_legal = supplier_legals(:one)
  end

  test "visiting the index" do
    visit supplier_legals_url
    assert_selector "h1", text: "Supplier Legals"
  end

  test "creating a Supplier legal" do
    visit supplier_legals_url
    click_on "New Supplier Legal"

    fill_in "Cnpj", with: @supplier_legal.cnpj
    fill_in "Fantasy Name", with: @supplier_legal.fantasy_name
    fill_in "Social Name", with: @supplier_legal.social_name
    fill_in "State Registration", with: @supplier_legal.state_registration
    click_on "Create Supplier legal"

    assert_text "Supplier legal was successfully created"
    click_on "Back"
  end

  test "updating a Supplier legal" do
    visit supplier_legals_url
    click_on "Edit", match: :first

    fill_in "Cnpj", with: @supplier_legal.cnpj
    fill_in "Fantasy Name", with: @supplier_legal.fantasy_name
    fill_in "Social Name", with: @supplier_legal.social_name
    fill_in "State Registration", with: @supplier_legal.state_registration
    click_on "Update Supplier legal"

    assert_text "Supplier legal was successfully updated"
    click_on "Back"
  end

  test "destroying a Supplier legal" do
    visit supplier_legals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supplier legal was successfully destroyed"
  end
end
