require 'test_helper'

class VeggiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @veggy = veggies(:one)
  end

  test "should get index" do
    get veggies_url
    assert_response :success
  end

  test "should get new" do
    get new_veggy_url
    assert_response :success
  end

  test "should create veggy" do
    assert_difference('Veggie.count') do
      post veggies_url, params: { veggy: { vID: @veggy.vID, vName: @veggy.vName } }
    end

    assert_redirected_to veggy_url(Veggie.last)
  end

  test "should show veggy" do
    get veggy_url(@veggy)
    assert_response :success
  end

  test "should get edit" do
    get edit_veggy_url(@veggy)
    assert_response :success
  end

  test "should update veggy" do
    patch veggy_url(@veggy), params: { veggy: { vID: @veggy.vID, vName: @veggy.vName } }
    assert_redirected_to veggy_url(@veggy)
  end

  test "should destroy veggy" do
    assert_difference('Veggie.count', -1) do
      delete veggy_url(@veggy)
    end

    assert_redirected_to veggies_url
  end
end
