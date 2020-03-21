require 'test_helper'

class DocumentBoxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document_box = document_boxes(:one)
  end

  test "should get index" do
    get document_boxes_url
    assert_response :success
  end

  test "should get new" do
    get new_document_box_url
    assert_response :success
  end

  test "should create document_box" do
    assert_difference('DocumentBox.count') do
      post document_boxes_url, params: { document_box: { document: @document_box.document } }
    end

    assert_redirected_to document_box_url(DocumentBox.last)
  end

  test "should show document_box" do
    get document_box_url(@document_box)
    assert_response :success
  end

  test "should get edit" do
    get edit_document_box_url(@document_box)
    assert_response :success
  end

  test "should update document_box" do
    patch document_box_url(@document_box), params: { document_box: { document: @document_box.document } }
    assert_redirected_to document_box_url(@document_box)
  end

  test "should destroy document_box" do
    assert_difference('DocumentBox.count', -1) do
      delete document_box_url(@document_box)
    end

    assert_redirected_to document_boxes_url
  end
end
