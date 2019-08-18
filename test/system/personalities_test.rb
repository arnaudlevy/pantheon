require "application_system_test_case"

class PersonalitiesTest < ApplicationSystemTestCase
  setup do
    @personality = personalities(:one)
  end

  test "visiting the index" do
    visit personalities_url
    assert_selector "h1", text: "Personalities"
  end

  test "creating a Personality" do
    visit personalities_url
    click_on "New Personality"

    fill_in "First name", with: @personality.first_name
    fill_in "Last name", with: @personality.last_name
    fill_in "Name", with: @personality.name
    fill_in "Photo", with: @personality.photo
    fill_in "Wikipedia url", with: @personality.wikipedia_url
    click_on "Create Personality"

    assert_text "Personality was successfully created"
    click_on "Back"
  end

  test "updating a Personality" do
    visit personalities_url
    click_on "Edit", match: :first

    fill_in "First name", with: @personality.first_name
    fill_in "Last name", with: @personality.last_name
    fill_in "Name", with: @personality.name
    fill_in "Photo", with: @personality.photo
    fill_in "Wikipedia url", with: @personality.wikipedia_url
    click_on "Update Personality"

    assert_text "Personality was successfully updated"
    click_on "Back"
  end

  test "destroying a Personality" do
    visit personalities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personality was successfully destroyed"
  end
end
