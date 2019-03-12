require 'test_helper'

class LegalCustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legal_customer = legal_customers(:one)
  end

  test "should get index" do
    get legal_customers_url
    assert_response :success
  end

  test "should get new" do
    get new_legal_customer_url
    assert_response :success
  end

  test "should create legal_customer" do
    assert_difference('LegalCustomer.count') do
      post legal_customers_url, params: { legal_customer: { email: @legal_customer.email, fantasy_name: @legal_customer.fantasy_name, observation: @legal_customer.observation, social_name: @legal_customer.social_name } }
    end

    assert_redirected_to legal_customer_url(LegalCustomer.last)
  end

  test "should show legal_customer" do
    get legal_customer_url(@legal_customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_legal_customer_url(@legal_customer)
    assert_response :success
  end

  test "should update legal_customer" do
    patch legal_customer_url(@legal_customer), params: { legal_customer: { email: @legal_customer.email, fantasy_name: @legal_customer.fantasy_name, observation: @legal_customer.observation, social_name: @legal_customer.social_name } }
    assert_redirected_to legal_customer_url(@legal_customer)
  end

  test "should destroy legal_customer" do
    assert_difference('LegalCustomer.count', -1) do
      delete legal_customer_url(@legal_customer)
    end

    assert_redirected_to legal_customers_url
  end
end
