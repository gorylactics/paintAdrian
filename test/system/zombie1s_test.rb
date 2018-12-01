require "application_system_test_case"

class Zombie1sTest < ApplicationSystemTestCase
  setup do
    @zombie1 = zombie1s(:one)
  end

  test "visiting the index" do
    visit zombie1s_url
    assert_selector "h1", text: "Zombie1s"
  end

  test "creating a Zombie1" do
    visit zombie1s_url
    click_on "New Zombie1"

    fill_in "Humanomordido1", with: @zombie1.humanoMordido1
    fill_in "Integer", with: @zombie1.integer
    fill_in "Name", with: @zombie1.name
    click_on "Create Zombie1"

    assert_text "Zombie1 was successfully created"
    click_on "Back"
  end

  test "updating a Zombie1" do
    visit zombie1s_url
    click_on "Edit", match: :first

    fill_in "Humanomordido1", with: @zombie1.humanoMordido1
    fill_in "Integer", with: @zombie1.integer
    fill_in "Name", with: @zombie1.name
    click_on "Update Zombie1"

    assert_text "Zombie1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Zombie1" do
    visit zombie1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zombie1 was successfully destroyed"
  end
end
