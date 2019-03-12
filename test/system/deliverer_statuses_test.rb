require "application_system_test_case"

class DelivererStatusesTest < ApplicationSystemTestCase
  setup do
    @deliverer_status = deliverer_statuses(:one)
  end

  test "visiting the index" do
    visit deliverer_statuses_url
    assert_selector "h1", text: "Deliverer Statuses"
  end

  test "creating a Deliverer status" do
    visit deliverer_statuses_url
    click_on "New Deliverer Status"

    fill_in "Description", with: @deliverer_status.description
    click_on "Create Deliverer status"

    assert_text "Deliverer status was successfully created"
    click_on "Back"
  end

  test "updating a Deliverer status" do
    visit deliverer_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @deliverer_status.description
    click_on "Update Deliverer status"

    assert_text "Deliverer status was successfully updated"
    click_on "Back"
  end

  test "destroying a Deliverer status" do
    visit deliverer_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deliverer status was successfully destroyed"
  end
end
