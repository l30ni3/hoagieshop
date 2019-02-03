# frozen_string_literal: true

require 'application_system_test_case'

class PayingMethodsTest < ApplicationSystemTestCase
  setup do
    @paying_method = paying_methods(:one)
  end

  test 'visiting the index' do
    visit paying_methods_url
    assert_selector 'h1', text: 'Paying Methods'
  end

  test 'creating a Paying method' do
    visit paying_methods_url
    click_on 'New Paying Method'

    fill_in 'Provider', with: @paying_method.provider
    click_on 'Create Paying method'

    assert_text 'Paying method was successfully created'
    click_on 'Back'
  end

  test 'updating a Paying method' do
    visit paying_methods_url
    click_on 'Edit', match: :first

    fill_in 'Provider', with: @paying_method.provider
    click_on 'Update Paying method'

    assert_text 'Paying method was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Paying method' do
    visit paying_methods_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Paying method was successfully destroyed'
  end
end
