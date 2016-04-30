require 'test_helper'

class ConfigdbsControllerTest < ActionController::TestCase
  setup do
    @configdb = configdbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configdbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configdb" do
    assert_difference('Configdb.count') do
      post :create, configdb: { location: @configdb.location, monitor: @configdb.monitor, password: @configdb.password, username: @configdb.username }
    end

    assert_redirected_to configdb_path(assigns(:configdb))
  end

  test "should show configdb" do
    get :show, id: @configdb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @configdb
    assert_response :success
  end

  test "should update configdb" do
    patch :update, id: @configdb, configdb: { location: @configdb.location, monitor: @configdb.monitor, password: @configdb.password, username: @configdb.username }
    assert_redirected_to configdb_path(assigns(:configdb))
  end

  test "should destroy configdb" do
    assert_difference('Configdb.count', -1) do
      delete :destroy, id: @configdb
    end

    assert_redirected_to configdbs_path
  end
end
