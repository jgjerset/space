require 'test_helper'

class LotTypesControllerTest < ActionController::TestCase
  setup do
    @lot_type = lot_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lot_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lot_type" do
    assert_difference('LotType.count') do
      post :create, lot_type: { description: @lot_type.description, enddate: @lot_type.enddate, numspots: @lot_type.numspots, rate: @lot_type.rate, startdate: @lot_type.startdate, type: @lot_type.type }
    end

    assert_redirected_to lot_type_path(assigns(:lot_type))
  end

  test "should show lot_type" do
    get :show, id: @lot_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lot_type
    assert_response :success
  end

  test "should update lot_type" do
    put :update, id: @lot_type, lot_type: { description: @lot_type.description, enddate: @lot_type.enddate, numspots: @lot_type.numspots, rate: @lot_type.rate, startdate: @lot_type.startdate, type: @lot_type.type }
    assert_redirected_to lot_type_path(assigns(:lot_type))
  end

  test "should destroy lot_type" do
    assert_difference('LotType.count', -1) do
      delete :destroy, id: @lot_type
    end

    assert_redirected_to lot_types_path
  end
end
