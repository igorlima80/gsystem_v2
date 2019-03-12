require "application_system_test_case"

class SupplierPhysicalsTest < ApplicationSystemTestCase
  setup do
    @supplier_physical = supplier_physicals(:one)
  end

  test "visiting the index" do
    visit supplier_physicals_url
    assert_selector "h1", text: "Supplier Physicals"
  end

  test "creating a Supplier physical" do
    visit supplier_physicals_url
    click_on "New Supplier Physical"

    fill_in "Cpf", with: @supplier_physical.cpf
    fill_in "Identity", with: @supplier_physical.identity
    fill_in "Name", with: @supplier_physical.name
    fill_in "Sex", with: @supplier_physical.sex_id
    click_on "Create Supplier physical"

    assert_text "Supplier physical was successfully created"
    click_on "Back"
  end

  test "updating a Supplier physical" do
    visit supplier_physicals_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @supplier_physical.cpf
    fill_in "Identity", with: @supplier_physical.identity
    fill_in "Name", with: @supplier_physical.name
    fill_in "Sex", with: @supplier_physical.sex_id
    click_on "Update Supplier physical"

    assert_text "Supplier physical was successfully updated"
    click_on "Back"
  end

  test "destroying a Supplier physical" do
    visit supplier_physicals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supplier physical was successfully destroyed"
  end
end
