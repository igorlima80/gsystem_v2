require "application_system_test_case"

class PhysicalCustomersTest < ApplicationSystemTestCase
  setup do
    @physical_customer = physical_customers(:one)
  end

  test "visiting the index" do
    visit physical_customers_url
    assert_selector "h1", text: "Physical Customers"
  end

  test "creating a Physical customer" do
    visit physical_customers_url
    click_on "New Physical Customer"

    fill_in "Birth Date", with: @physical_customer.birth_date
    fill_in "Cpf", with: @physical_customer.cpf
    fill_in "Email", with: @physical_customer.email
    fill_in "Name", with: @physical_customer.name
    fill_in "Observation", with: @physical_customer.observation
    fill_in "Registration", with: @physical_customer.registration
    fill_in "Rg", with: @physical_customer.rg
    fill_in "Sex", with: @physical_customer.sex_id
    click_on "Create Physical customer"

    assert_text "Physical customer was successfully created"
    click_on "Back"
  end

  test "updating a Physical customer" do
    visit physical_customers_url
    click_on "Edit", match: :first

    fill_in "Birth Date", with: @physical_customer.birth_date
    fill_in "Cpf", with: @physical_customer.cpf
    fill_in "Email", with: @physical_customer.email
    fill_in "Name", with: @physical_customer.name
    fill_in "Observation", with: @physical_customer.observation
    fill_in "Registration", with: @physical_customer.registration
    fill_in "Rg", with: @physical_customer.rg
    fill_in "Sex", with: @physical_customer.sex_id
    click_on "Update Physical customer"

    assert_text "Physical customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Physical customer" do
    visit physical_customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Physical customer was successfully destroyed"
  end
end
