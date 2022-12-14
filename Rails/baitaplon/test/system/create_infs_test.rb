require "application_system_test_case"

class CreateInfsTest < ApplicationSystemTestCase
  setup do
    @create_inf = create_infs(:one)
  end

  test "visiting the index" do
    visit create_infs_url
    assert_selector "h1", text: "Create infs"
  end

  test "should create create inf" do
    visit create_infs_url
    click_on "New create inf"

    fill_in "Email", with: @create_inf.email
    fill_in "First name", with: @create_inf.first_name
    fill_in "Last name", with: @create_inf.last_name
    fill_in "Phone", with: @create_inf.phone
    fill_in "Twitter", with: @create_inf.twitter
    click_on "Create Create inf"

    assert_text "Create inf was successfully created"
    click_on "Back"
  end

  test "should update Create inf" do
    visit create_inf_url(@create_inf)
    click_on "Edit this create inf", match: :first

    fill_in "Email", with: @create_inf.email
    fill_in "First name", with: @create_inf.first_name
    fill_in "Last name", with: @create_inf.last_name
    fill_in "Phone", with: @create_inf.phone
    fill_in "Twitter", with: @create_inf.twitter
    click_on "Update Create inf"

    assert_text "Create inf was successfully updated"
    click_on "Back"
  end

  test "should destroy Create inf" do
    visit create_inf_url(@create_inf)
    click_on "Destroy this create inf", match: :first

    assert_text "Create inf was successfully destroyed"
  end
end
