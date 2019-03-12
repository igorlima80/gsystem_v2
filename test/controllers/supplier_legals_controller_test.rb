require 'test_helper'

class SupplierLegalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplier_legal = supplier_legals(:one)
  end

  test "should get index" do
    get supplier_legals_url
    assert_response :success
  end

  test "should get new" do
    get new_supplier_legal_url
    assert_response :success
  end

  test "should create supplier_legal" do
    assert_difference('SupplierLegal.count') do
      post supplier_legals_url, params: { supplier_legal: { cnpj: @supplier_legal.cnpj, fantasy_name: @supplier_legal.fantasy_name, social_name: @supplier_legal.social_name, state_registration: @supplier_legal.state_registration } }
    end

    assert_redirected_to supplier_legal_url(SupplierLegal.last)
  end

  test "should show supplier_legal" do
    get supplier_legal_url(@supplier_legal)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplier_legal_url(@supplier_legal)
    assert_response :success
  end

  test "should update supplier_legal" do
    patch supplier_legal_url(@supplier_legal), params: { supplier_legal: { cnpj: @supplier_legal.cnpj, fantasy_name: @supplier_legal.fantasy_name, social_name: @supplier_legal.social_name, state_registration: @supplier_legal.state_registration } }
    assert_redirected_to supplier_legal_url(@supplier_legal)
  end

  test "should destroy supplier_legal" do
    assert_difference('SupplierLegal.count', -1) do
      delete supplier_legal_url(@supplier_legal)
    end

    assert_redirected_to supplier_legals_url
  end
end
