require "application_system_test_case"

class DeliverersTest < ApplicationSystemTestCase
  setup do
    @deliverer = deliverers(:one)
  end

  test "visiting the index" do
    visit deliverers_url
    assert_selector "h1", text: "Deliverers"
  end

  test "creating a Deliverer" do
    visit deliverers_url
    click_on "New Deliverer"

    fill_in "Admission Date", with: @deliverer.admission_date
    fill_in "Deliverer Status", with: @deliverer.deliverer_status_id
    fill_in "Estabilishment", with: @deliverer.estabilishment_id
    fill_in "Name", with: @deliverer.name
    fill_in "Phone", with: @deliverer.phone
    fill_in "Resignation Date", with: @deliverer.resignation_date
    fill_in "Sex", with: @deliverer.sex_id
    fill_in "Type Deliverer", with: @deliverer.type_deliverer_id
    click_on "Create Deliverer"

    assert_text "Deliverer was successfully created"
    click_on "Back"
  end

  test "updating a Deliverer" do
    visit deliverers_url
    click_on "Edit", match: :first

    fill_in "Admission Date", with: @deliverer.admission_date
    fill_in "Deliverer Status", with: @deliverer.deliverer_status_id
    fill_in "Estabilishment", with: @deliverer.estabilishment_id
    fill_in "Name", with: @deliverer.name
    fill_in "Phone", with: @deliverer.phone
    fill_in "Resignation Date", with: @deliverer.resignation_date
    fill_in "Sex", with: @deliverer.sex_id
    fill_in "Type Deliverer", with: @deliverer.type_deliverer_id
    click_on "Update Deliverer"

    assert_text "Deliverer was successfully updated"
    click_on "Back"
  end

  test "destroying a Deliverer" do
    visit deliverers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deliverer was successfully destroyed"
  end
end
