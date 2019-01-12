require "application_system_test_case"

class HoagiesTest < ApplicationSystemTestCase
  setup do
    @hoagy = hoagies(:one)
  end

  test "visiting the index" do
    visit hoagies_url
    assert_selector "h1", text: "Hoagies"
  end

  test "creating a Hoagie" do
    visit hoagies_url
    click_on "New Hoagie"

    fill_in "Bread", with: @hoagy.bread
    fill_in "Created", with: @hoagy.created
    fill_in "Hoagieid", with: @hoagy.hoagieID
    fill_in "Main1", with: @hoagy.main1
    fill_in "Main2", with: @hoagy.main2
    fill_in "Orderid", with: @hoagy.orderID
    fill_in "Sauce1", with: @hoagy.sauce1
    fill_in "Sauce2", with: @hoagy.sauce2
    fill_in "User", with: @hoagy.user
    fill_in "Veggies1", with: @hoagy.veggies1
    fill_in "Veggies2", with: @hoagy.veggies2
    fill_in "Veggies3", with: @hoagy.veggies3
    fill_in "Veggies4", with: @hoagy.veggies4
    fill_in "Veggies5", with: @hoagy.veggies5
    click_on "Create Hoagie"

    assert_text "Hoagie was successfully created"
    click_on "Back"
  end

  test "updating a Hoagie" do
    visit hoagies_url
    click_on "Edit", match: :first

    fill_in "Bread", with: @hoagy.bread
    fill_in "Created", with: @hoagy.created
    fill_in "Hoagieid", with: @hoagy.hoagieID
    fill_in "Main1", with: @hoagy.main1
    fill_in "Main2", with: @hoagy.main2
    fill_in "Orderid", with: @hoagy.orderID
    fill_in "Sauce1", with: @hoagy.sauce1
    fill_in "Sauce2", with: @hoagy.sauce2
    fill_in "User", with: @hoagy.user
    fill_in "Veggies1", with: @hoagy.veggies1
    fill_in "Veggies2", with: @hoagy.veggies2
    fill_in "Veggies3", with: @hoagy.veggies3
    fill_in "Veggies4", with: @hoagy.veggies4
    fill_in "Veggies5", with: @hoagy.veggies5
    click_on "Update Hoagie"

    assert_text "Hoagie was successfully updated"
    click_on "Back"
  end

  test "destroying a Hoagie" do
    visit hoagies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hoagie was successfully destroyed"
  end
end
