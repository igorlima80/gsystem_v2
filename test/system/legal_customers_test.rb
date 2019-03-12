require "application_system_test_case"

class LegalCustomersTest < ApplicationSystemTestCase
  setup do
    @legal_customer = legal_customers(:one)
  end

  test "visiting the index" do
    visit legal_customers_url
    assert_selector "h1", text: "Legal Customers"
  end

  test "creating a Legal customer" do
    visit legal_customers_url
    click_on "New Legal Customer"

    fill_in "Email", with: @legal_customer.email
    fill_in "Fantasy Name", with: @legal_customer.fantasy_name
    fill_in "Observation", with: @legal_customer.observation
    fill_in "Social Name", with: @legal_customer.social_name
    click_on "Create Legal customer"

    assert_text "Legal customer was successfully created"
    click_on "Back"
  end

  test "updating a Legal customer" do
    visit legal_customers_url
    click_on "Edit", match: :first

    fill_in "Email", with: @legal_customer.email
    fill_in "Fantasy Name", with: @legal_customer.fantasy_name
    fill_in "Observation", with: @legal_customer.observation
    fill_in "Social Name", with: @legal_customer.social_name
    click_on "Update Legal customer"

    assert_text "Legal customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Legal customer" do
    visit legal_customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Legal customer was successfully destroyed"
  end
end
