require 'test_helper'

class PhysicalCustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @physical_customer = physical_customers(:one)
  end

  test "should get index" do
    get physical_customers_url
    assert_response :success
  end

  test "should get new" do
    get new_physical_customer_url
    assert_response :success
  end

  test "should create physical_customer" do
    assert_difference('PhysicalCustomer.count') do
      post physical_customers_url, params: { physical_customer: { birth_date: @physical_customer.birth_date, cpf: @physical_customer.cpf, email: @physical_customer.email, name: @physical_customer.name, observation: @physical_customer.observation, registration: @physical_customer.registration, rg: @physical_customer.rg, sex_id: @physical_customer.sex_id } }
    end

    assert_redirected_to physical_customer_url(PhysicalCustomer.last)
  end

  test "should show physical_customer" do
    get physical_customer_url(@physical_customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_physical_customer_url(@physical_customer)
    assert_response :success
  end

  test "should update physical_customer" do
    patch physical_customer_url(@physical_customer), params: { physical_customer: { birth_date: @physical_customer.birth_date, cpf: @physical_customer.cpf, email: @physical_customer.email, name: @physical_customer.name, observation: @physical_customer.observation, registration: @physical_customer.registration, rg: @physical_customer.rg, sex_id: @physical_customer.sex_id } }
    assert_redirected_to physical_customer_url(@physical_customer)
  end

  test "should destroy physical_customer" do
    assert_difference('PhysicalCustomer.count', -1) do
      delete physical_customer_url(@physical_customer)
    end

    assert_redirected_to physical_customers_url
  end
end
