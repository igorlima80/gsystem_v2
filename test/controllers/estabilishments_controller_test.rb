require 'test_helper'

class EstabilishmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estabilishment = estabilishments(:one)
  end

  test "should get index" do
    get estabilishments_url
    assert_response :success
  end

  test "should get new" do
    get new_estabilishment_url
    assert_response :success
  end

  test "should create estabilishment" do
    assert_difference('Estabilishment.count') do
      post estabilishments_url, params: { estabilishment: { description: @estabilishment.description, state_registration: @estabilishment.state_registration } }
    end

    assert_redirected_to estabilishment_url(Estabilishment.last)
  end

  test "should show estabilishment" do
    get estabilishment_url(@estabilishment)
    assert_response :success
  end

  test "should get edit" do
    get edit_estabilishment_url(@estabilishment)
    assert_response :success
  end

  test "should update estabilishment" do
    patch estabilishment_url(@estabilishment), params: { estabilishment: { description: @estabilishment.description, state_registration: @estabilishment.state_registration } }
    assert_redirected_to estabilishment_url(@estabilishment)
  end

  test "should destroy estabilishment" do
    assert_difference('Estabilishment.count', -1) do
      delete estabilishment_url(@estabilishment)
    end

    assert_redirected_to estabilishments_url
  end
end
