require 'test_helper'

class UsersTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_tasks_index_url
    assert_response :success
  end

  test "should get show" do
    get users_tasks_show_url
    assert_response :success
  end

  test "should get new" do
    get users_tasks_new_url
    assert_response :success
  end

  test "should get create" do
    get users_tasks_create_url
    assert_response :success
  end

  test "should get edit" do
    get users_tasks_edit_url
    assert_response :success
  end

  test "should get update" do
    get users_tasks_update_url
    assert_response :success
  end

  test "should get destroy" do
    get users_tasks_destroy_url
    assert_response :success
  end

end
