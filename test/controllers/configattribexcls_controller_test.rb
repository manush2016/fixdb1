require 'test_helper'

class ConfigattribexclsControllerTest < ActionController::TestCase
  setup do
    @configattribexcl = configattribexcls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configattribexcls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configattribexcl" do
    assert_difference('Configattribexcl.count') do
      post :create, configattribexcl: { configattrib_id: @configattribexcl.configattrib_id, excludemonitor: @configattribexcl.excludemonitor, param1: @configattribexcl.param1 }
    end

    assert_redirected_to configattribexcl_path(assigns(:configattribexcl))
  end

  test "should show configattribexcl" do
    get :show, id: @configattribexcl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @configattribexcl
    assert_response :success
  end

  test "should update configattribexcl" do
    patch :update, id: @configattribexcl, configattribexcl: { configattrib_id: @configattribexcl.configattrib_id, excludemonitor: @configattribexcl.excludemonitor, param1: @configattribexcl.param1 }
    assert_redirected_to configattribexcl_path(assigns(:configattribexcl))
  end

  test "should destroy configattribexcl" do
    assert_difference('Configattribexcl.count', -1) do
      delete :destroy, id: @configattribexcl
    end

    assert_redirected_to configattribexcls_path
  end
end
