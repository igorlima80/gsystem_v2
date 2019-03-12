require 'test_helper'

class SupplierPhysicalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplier_physical = supplier_physicals(:one)
  end

  test "should get index" do
    get supplier_physicals_url
    assert_response :success
  end

  test "should get new" do
    get new_supplier_physical_url
    assert_response :success
  end

  test "should create supplier_physical" do
    assert_difference('SupplierPhysical.count') do
      post supplier_physicals_url, params: { supplier_physical: { cpf: @supplier_physical.cpf, identity: @supplier_physical.identity, name: @supplier_physical.name, sex_id: @supplier_physical.sex_id } }
    end

    assert_redirected_to supplier_physical_url(SupplierPhysical.last)
  end

  test "should show supplier_physical" do
    get supplier_physical_url(@supplier_physical)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplier_physical_url(@supplier_physical)
    assert_response :success
  end

  test "should update supplier_physical" do
    patch supplier_physical_url(@supplier_physical), params: { supplier_physical: { cpf: @supplier_physical.cpf, identity: @supplier_physical.identity, name: @supplier_physical.name, sex_id: @supplier_physical.sex_id } }
    assert_redirected_to supplier_physical_url(@supplier_physical)
  end

  test "should destroy supplier_physical" do
    assert_difference('SupplierPhysical.count', -1) do
      delete supplier_physical_url(@supplier_physical)
    end

    assert_redirected_to supplier_physicals_url
  end
end
