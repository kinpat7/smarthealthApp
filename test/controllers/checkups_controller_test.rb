require 'test_helper'

class CheckupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get checkups_index_url
    assert_response :success
  end

  test "should get show" do
    get checkups_show_url
    assert_response :success
  end

  test "should get new" do
    get checkups_new_url
    assert_response :success
  end

  test "should get edit" do
    get checkups_edit_url
    assert_response :success
  end

end
