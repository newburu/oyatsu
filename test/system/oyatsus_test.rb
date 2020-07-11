require "application_system_test_case"

class OyatsusTest < ApplicationSystemTestCase
  setup do
    @oyatsu = oyatsus(:one)
  end

  test "visiting the index" do
    visit oyatsus_url
    assert_selector "h1", text: "Oyatsus"
  end

  test "creating a Oyatsu" do
    visit oyatsus_url
    click_on "New Oyatsu"

    fill_in "Category", with: @oyatsu.category
    fill_in "Detail", with: @oyatsu.detail
    fill_in "Image", with: @oyatsu.image
    fill_in "Maker", with: @oyatsu.maker
    fill_in "Name", with: @oyatsu.name
    fill_in "Site url", with: @oyatsu.site_url
    fill_in "Watch at", with: @oyatsu.watch_at
    click_on "Create Oyatsu"

    assert_text "Oyatsu was successfully created"
    click_on "Back"
  end

  test "updating a Oyatsu" do
    visit oyatsus_url
    click_on "Edit", match: :first

    fill_in "Category", with: @oyatsu.category
    fill_in "Detail", with: @oyatsu.detail
    fill_in "Image", with: @oyatsu.image
    fill_in "Maker", with: @oyatsu.maker
    fill_in "Name", with: @oyatsu.name
    fill_in "Site url", with: @oyatsu.site_url
    fill_in "Watch at", with: @oyatsu.watch_at
    click_on "Update Oyatsu"

    assert_text "Oyatsu was successfully updated"
    click_on "Back"
  end

  test "destroying a Oyatsu" do
    visit oyatsus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oyatsu was successfully destroyed"
  end
end
