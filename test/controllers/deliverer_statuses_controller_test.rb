require 'test_helper'

class DelivererStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deliverer_status = deliverer_statuses(:one)
  end

  test "should get index" do
    get deliverer_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_deliverer_status_url
    assert_response :success
  end

  test "should create deliverer_status" do
    assert_difference('DelivererStatus.count') do
      post deliverer_statuses_url, params: { deliverer_status: { description: @deliverer_status.description } }
    end

    assert_redirected_to deliverer_status_url(DelivererStatus.last)
  end

  test "should show deliverer_status" do
    get deliverer_status_url(@deliverer_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_deliverer_status_url(@deliverer_status)
    assert_response :success
  end

  test "should update deliverer_status" do
    patch deliverer_status_url(@deliverer_status), params: { deliverer_status: { description: @deliverer_status.description } }
    assert_redirected_to deliverer_status_url(@deliverer_status)
  end

  test "should destroy deliverer_status" do
    assert_difference('DelivererStatus.count', -1) do
      delete deliverer_status_url(@deliverer_status)
    end

    assert_redirected_to deliverer_statuses_url
  end
end
