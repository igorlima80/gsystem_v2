require 'test_helper'

class TypeDeliverersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_deliverer = type_deliverers(:one)
  end

  test "should get index" do
    get type_deliverers_url
    assert_response :success
  end

  test "should get new" do
    get new_type_deliverer_url
    assert_response :success
  end

  test "should create type_deliverer" do
    assert_difference('TypeDeliverer.count') do
      post type_deliverers_url, params: { type_deliverer: { description: @type_deliverer.description } }
    end

    assert_redirected_to type_deliverer_url(TypeDeliverer.last)
  end

  test "should show type_deliverer" do
    get type_deliverer_url(@type_deliverer)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_deliverer_url(@type_deliverer)
    assert_response :success
  end

  test "should update type_deliverer" do
    patch type_deliverer_url(@type_deliverer), params: { type_deliverer: { description: @type_deliverer.description } }
    assert_redirected_to type_deliverer_url(@type_deliverer)
  end

  test "should destroy type_deliverer" do
    assert_difference('TypeDeliverer.count', -1) do
      delete type_deliverer_url(@type_deliverer)
    end

    assert_redirected_to type_deliverers_url
  end
end
