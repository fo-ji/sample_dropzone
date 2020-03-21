require "application_system_test_case"

class DocumentBoxesTest < ApplicationSystemTestCase
  setup do
    @document_box = document_boxes(:one)
  end

  test "visiting the index" do
    visit document_boxes_url
    assert_selector "h1", text: "Document Boxes"
  end

  test "creating a Document box" do
    visit document_boxes_url
    click_on "New Document Box"

    fill_in "Document", with: @document_box.document
    click_on "Create Document box"

    assert_text "Document box was successfully created"
    click_on "Back"
  end

  test "updating a Document box" do
    visit document_boxes_url
    click_on "Edit", match: :first

    fill_in "Document", with: @document_box.document
    click_on "Update Document box"

    assert_text "Document box was successfully updated"
    click_on "Back"
  end

  test "destroying a Document box" do
    visit document_boxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Document box was successfully destroyed"
  end
end
