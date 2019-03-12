require 'test_helper'

class DeliverersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deliverer = deliverers(:one)
  end

  test "should get index" do
    get deliverers_url
    assert_response :success
  end

  test "should get new" do
    get new_deliverer_url
    assert_response :success
  end

  test "should create deliverer" do
    assert_difference('Deliverer.count') do
      post deliverers_url, params: { deliverer: { admission_date: @deliverer.admission_date, deliverer_status_id: @deliverer.deliverer_status_id, estabilishment_id: @deliverer.estabilishment_id, name: @deliverer.name, phone: @deliverer.phone, resignation_date: @deliverer.resignation_date, sex_id: @deliverer.sex_id, type_deliverer_id: @deliverer.type_deliverer_id } }
    end

    assert_redirected_to deliverer_url(Deliverer.last)
  end

  test "should show deliverer" do
    get deliverer_url(@deliverer)
    assert_response :success
  end

  test "should get edit" do
    get edit_deliverer_url(@deliverer)
    assert_response :success
  end

  test "should update deliverer" do
    patch deliverer_url(@deliverer), params: { deliverer: { admission_date: @deliverer.admission_date, deliverer_status_id: @deliverer.deliverer_status_id, estabilishment_id: @deliverer.estabilishment_id, name: @deliverer.name, phone: @deliverer.phone, resignation_date: @deliverer.resignation_date, sex_id: @deliverer.sex_id, type_deliverer_id: @deliverer.type_deliverer_id } }
    assert_redirected_to deliverer_url(@deliverer)
  end

  test "should destroy deliverer" do
    assert_difference('Deliverer.count', -1) do
      delete deliverer_url(@deliverer)
    end

    assert_redirected_to deliverers_url
  end
end
