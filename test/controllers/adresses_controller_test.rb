# frozen_string_literal: true

require 'test_helper'

class AdressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adress = adresses(:one)
  end

  test 'should get index' do
    get adresses_url
    assert_response :success
  end

  test 'should get new' do
    get new_adress_url
    assert_response :success
  end

  test 'should create adress' do
    assert_difference('Adress.count') do
      post adresses_url, params: { adress: { city: @adress.city, email: @adress.email, isBillingAdress: @adress.isBillingAdress, number: @adress.number, phone: @adress.phone, postalCode: @adress.postalCode, street: @adress.street } }
    end

    assert_redirected_to adress_url(Adress.last)
  end

  test 'should show adress' do
    get adress_url(@adress)
    assert_response :success
  end

  test 'should get edit' do
    get edit_adress_url(@adress)
    assert_response :success
  end

  test 'should update adress' do
    patch adress_url(@adress), params: { adress: { city: @adress.city, email: @adress.email, isBillingAdress: @adress.isBillingAdress, number: @adress.number, phone: @adress.phone, postalCode: @adress.postalCode, street: @adress.street } }
    assert_redirected_to adress_url(@adress)
  end

  test 'should destroy adress' do
    assert_difference('Adress.count', -1) do
      delete adress_url(@adress)
    end

    assert_redirected_to adresses_url
  end
end
