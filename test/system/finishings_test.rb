require "application_system_test_case"

class FinishingsTest < ApplicationSystemTestCase
  setup do
    @finishing = finishings(:one)
  end

  test "visiting the index" do
    visit finishings_url
    assert_selector "h1", text: "Finishings"
  end

  test "should create finishing" do
    visit finishings_url
    click_on "New finishing"

    fill_in "Title", with: @finishing.title
    click_on "Create Finishing"

    assert_text "Finishing was successfully created"
    click_on "Back"
  end

  test "should update Finishing" do
    visit finishing_url(@finishing)
    click_on "Edit this finishing", match: :first

    fill_in "Title", with: @finishing.title
    click_on "Update Finishing"

    assert_text "Finishing was successfully updated"
    click_on "Back"
  end

  test "should destroy Finishing" do
    visit finishing_url(@finishing)
    click_on "Destroy this finishing", match: :first

    assert_text "Finishing was successfully destroyed"
  end
end
