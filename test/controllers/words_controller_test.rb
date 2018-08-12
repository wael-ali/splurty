require 'test_helper'

class WordsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get words_create_url
    assert_response :success
  end

  test "should get edit" do
    get words_edit_url
    assert_response :success
  end

  test "should get delete" do
    get words_delete_url
    assert_response :success
  end

  test "should get update" do
    get words_update_url
    assert_response :success
  end

end
