require "application_system_test_case"

class VeggiesTest < ApplicationSystemTestCase
  setup do
    @veggy = veggies(:one)
  end

  test "visiting the index" do
    visit veggies_url
    assert_selector "h1", text: "Veggies"
  end

  test "creating a Veggie" do
    visit veggies_url
    click_on "New Veggie"

    fill_in "Vid", with: @veggy.vID
    fill_in "Vname", with: @veggy.vName
    click_on "Create Veggie"

    assert_text "Veggie was successfully created"
    click_on "Back"
  end

  test "updating a Veggie" do
    visit veggies_url
    click_on "Edit", match: :first

    fill_in "Vid", with: @veggy.vID
    fill_in "Vname", with: @veggy.vName
    click_on "Update Veggie"

    assert_text "Veggie was successfully updated"
    click_on "Back"
  end

  test "destroying a Veggie" do
    visit veggies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Veggie was successfully destroyed"
  end
end
