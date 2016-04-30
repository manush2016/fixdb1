require 'test_helper'

class ConfigattribdetailsControllerTest < ActionController::TestCase
  setup do
    @configattribdetail = configattribdetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configattribdetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configattribdetail" do
    assert_difference('Configattribdetail.count') do
      post :create, configattribdetail: { configattrib_id: @configattribdetail.configattrib_id, log_time: @configattribdetail.log_time, notified: @configattribdetail.notified, param1: @configattribdetail.param1, param2: @configattribdetail.param2 }
    end

    assert_redirected_to configattribdetail_path(assigns(:configattribdetail))
  end

  test "should show configattribdetail" do
    get :show, id: @configattribdetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @configattribdetail
    assert_response :success
  end

  test "should update configattribdetail" do
    patch :update, id: @configattribdetail, configattribdetail: { configattrib_id: @configattribdetail.configattrib_id, log_time: @configattribdetail.log_time, notified: @configattribdetail.notified, param1: @configattribdetail.param1, param2: @configattribdetail.param2 }
    assert_redirected_to configattribdetail_path(assigns(:configattribdetail))
  end

  test "should destroy configattribdetail" do
    assert_difference('Configattribdetail.count', -1) do
      delete :destroy, id: @configattribdetail
    end

    assert_redirected_to configattribdetails_path
  end
end
