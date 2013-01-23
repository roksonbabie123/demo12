require 'test_helper'

class TableUsersControllerTest < ActionController::TestCase
  setup do
    @table_user = table_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:table_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create table_user" do
    assert_difference('TableUser.count') do
      post :create, table_user: @table_user.attributes
    end

    assert_redirected_to table_user_path(assigns(:table_user))
  end

  test "should show table_user" do
    get :show, id: @table_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @table_user
    assert_response :success
  end

  test "should update table_user" do
    put :update, id: @table_user, table_user: @table_user.attributes
    assert_redirected_to table_user_path(assigns(:table_user))
  end

  test "should destroy table_user" do
    assert_difference('TableUser.count', -1) do
      delete :destroy, id: @table_user
    end

    assert_redirected_to table_users_path
  end
end
