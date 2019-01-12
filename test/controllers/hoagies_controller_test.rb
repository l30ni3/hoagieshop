require 'test_helper'

class HoagiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hoagy = hoagies(:one)
  end

  test "should get index" do
    get hoagies_url
    assert_response :success
  end

  test "should get new" do
    get new_hoagy_url
    assert_response :success
  end

  test "should create hoagy" do
    assert_difference('Hoagie.count') do
      post hoagies_url, params: { hoagy: { bread: @hoagy.bread, created: @hoagy.created, hoagieID: @hoagy.hoagieID, main1: @hoagy.main1, main2: @hoagy.main2, orderID: @hoagy.orderID, sauce1: @hoagy.sauce1, sauce2: @hoagy.sauce2, user: @hoagy.user, veggies1: @hoagy.veggies1, veggies2: @hoagy.veggies2, veggies3: @hoagy.veggies3, veggies4: @hoagy.veggies4, veggies5: @hoagy.veggies5 } }
    end

    assert_redirected_to hoagy_url(Hoagie.last)
  end

  test "should show hoagy" do
    get hoagy_url(@hoagy)
    assert_response :success
  end

  test "should get edit" do
    get edit_hoagy_url(@hoagy)
    assert_response :success
  end

  test "should update hoagy" do
    patch hoagy_url(@hoagy), params: { hoagy: { bread: @hoagy.bread, created: @hoagy.created, hoagieID: @hoagy.hoagieID, main1: @hoagy.main1, main2: @hoagy.main2, orderID: @hoagy.orderID, sauce1: @hoagy.sauce1, sauce2: @hoagy.sauce2, user: @hoagy.user, veggies1: @hoagy.veggies1, veggies2: @hoagy.veggies2, veggies3: @hoagy.veggies3, veggies4: @hoagy.veggies4, veggies5: @hoagy.veggies5 } }
    assert_redirected_to hoagy_url(@hoagy)
  end

  test "should destroy hoagy" do
    assert_difference('Hoagie.count', -1) do
      delete hoagy_url(@hoagy)
    end

    assert_redirected_to hoagies_url
  end
end
