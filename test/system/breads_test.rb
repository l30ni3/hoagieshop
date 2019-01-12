require "application_system_test_case"

class BreadsTest < ApplicationSystemTestCase
  setup do
    @bread = breads(:one)
  end

  test "visiting the index" do
    visit breads_url
    assert_selector "h1", text: "Breads"
  end

  test "creating a Bread" do
    visit breads_url
    click_on "New Bread"

    fill_in "Bid", with: @bread.bID
    fill_in "Bname", with: @bread.bName
    fill_in "Btype", with: @bread.bType
    click_on "Create Bread"

    assert_text "Bread was successfully created"
    click_on "Back"
  end

  test "updating a Bread" do
    visit breads_url
    click_on "Edit", match: :first

    fill_in "Bid", with: @bread.bID
    fill_in "Bname", with: @bread.bName
    fill_in "Btype", with: @bread.bType
    click_on "Update Bread"

    assert_text "Bread was successfully updated"
    click_on "Back"
  end

  test "destroying a Bread" do
    visit breads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bread was successfully destroyed"
  end
end
