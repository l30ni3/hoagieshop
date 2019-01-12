require 'test_helper'

class PayingMethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paying_method = paying_methods(:one)
  end

  test "should get index" do
    get paying_methods_url
    assert_response :success
  end

  test "should get new" do
    get new_paying_method_url
    assert_response :success
  end

  test "should create paying_method" do
    assert_difference('PayingMethod.count') do
      post paying_methods_url, params: { paying_method: { provider: @paying_method.provider } }
    end

    assert_redirected_to paying_method_url(PayingMethod.last)
  end

  test "should show paying_method" do
    get paying_method_url(@paying_method)
    assert_response :success
  end

  test "should get edit" do
    get edit_paying_method_url(@paying_method)
    assert_response :success
  end

  test "should update paying_method" do
    patch paying_method_url(@paying_method), params: { paying_method: { provider: @paying_method.provider } }
    assert_redirected_to paying_method_url(@paying_method)
  end

  test "should destroy paying_method" do
    assert_difference('PayingMethod.count', -1) do
      delete paying_method_url(@paying_method)
    end

    assert_redirected_to paying_methods_url
  end
end
