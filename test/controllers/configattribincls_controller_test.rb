require 'test_helper'

class ConfigattribinclsControllerTest < ActionController::TestCase
  setup do
    @configattribincl = configattribincls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configattribincls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configattribincl" do
    assert_difference('Configattribincl.count') do
      post :create, configattribincl: { configattrib_id: @configattribincl.configattrib_id, param1: @configattribincl.param1, th_critical: @configattribincl.th_critical, th_warning: @configattribincl.th_warning }
    end

    assert_redirected_to configattribincl_path(assigns(:configattribincl))
  end

  test "should show configattribincl" do
    get :show, id: @configattribincl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @configattribincl
    assert_response :success
  end

  test "should update configattribincl" do
    patch :update, id: @configattribincl, configattribincl: { configattrib_id: @configattribincl.configattrib_id, param1: @configattribincl.param1, th_critical: @configattribincl.th_critical, th_warning: @configattribincl.th_warning }
    assert_redirected_to configattribincl_path(assigns(:configattribincl))
  end

  test "should destroy configattribincl" do
    assert_difference('Configattribincl.count', -1) do
      delete :destroy, id: @configattribincl
    end

    assert_redirected_to configattribincls_path
  end
end
