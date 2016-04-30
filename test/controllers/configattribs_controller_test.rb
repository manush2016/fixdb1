require 'test_helper'

class ConfigattribsControllerTest < ActionController::TestCase
  setup do
    @configattrib = configattribs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configattribs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configattrib" do
    assert_difference('Configattrib.count') do
      post :create, configattrib: { attribute_name: @configattrib.attribute_name, command: @configattrib.command, command_file_type: @configattrib.command_file_type, command_operand: @configattrib.command_operand, command_operator: @configattrib.command_operator, configdb_id: @configattrib.configdb_id, monitor: @configattrib.monitor, th_critical: @configattrib.th_critical, th_warning: @configattrib.th_warning }
    end

    assert_redirected_to configattrib_path(assigns(:configattrib))
  end

  test "should show configattrib" do
    get :show, id: @configattrib
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @configattrib
    assert_response :success
  end

  test "should update configattrib" do
    patch :update, id: @configattrib, configattrib: { attribute_name: @configattrib.attribute_name, command: @configattrib.command, command_file_type: @configattrib.command_file_type, command_operand: @configattrib.command_operand, command_operator: @configattrib.command_operator, configdb_id: @configattrib.configdb_id, monitor: @configattrib.monitor, th_critical: @configattrib.th_critical, th_warning: @configattrib.th_warning }
    assert_redirected_to configattrib_path(assigns(:configattrib))
  end

  test "should destroy configattrib" do
    assert_difference('Configattrib.count', -1) do
      delete :destroy, id: @configattrib
    end

    assert_redirected_to configattribs_path
  end
end
