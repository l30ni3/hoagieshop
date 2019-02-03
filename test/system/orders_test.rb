# frozen_string_literal: true

require 'application_system_test_case'

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test 'visiting the index' do
    visit orders_url
    assert_selector 'h1', text: 'Orders'
  end

  test 'creating a Order' do
    visit orders_url
    click_on 'New Order'

    fill_in 'Date', with: @order.date
    fill_in 'Estdelivery', with: @order.estDelivery
    fill_in 'Hasitems', with: @order.hasItems
    fill_in 'Orderid', with: @order.orderId
    fill_in 'Sumtotal', with: @order.sumTotal
    fill_in 'Userid', with: @order.userID
    click_on 'Create Order'

    assert_text 'Order was successfully created'
    click_on 'Back'
  end

  test 'updating a Order' do
    visit orders_url
    click_on 'Edit', match: :first

    fill_in 'Date', with: @order.date
    fill_in 'Estdelivery', with: @order.estDelivery
    fill_in 'Hasitems', with: @order.hasItems
    fill_in 'Orderid', with: @order.orderId
    fill_in 'Sumtotal', with: @order.sumTotal
    fill_in 'Userid', with: @order.userID
    click_on 'Update Order'

    assert_text 'Order was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Order' do
    visit orders_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Order was successfully destroyed'
  end
end
