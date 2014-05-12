require 'test_helper'

class EnginesControllerTest < ActionController::TestCase
  setup do
    @engine = engines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:engines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create engine" do
    assert_difference('Engine.count') do
      post :create, engine: { Manufacturer_id: @engine.Manufacturer_id, Prototype_id: @engine.Prototype_id, Railroad_id: @engine.Railroad_id, User_id: @engine.User_id, enginetype: @engine.enginetype, modelnumber: @engine.modelnumber, notes: @engine.notes, own: @engine.own, roadnumber: @engine.roadnumber, scale: @engine.scale }
    end

    assert_redirected_to engine_path(assigns(:engine))
  end

  test "should show engine" do
    get :show, id: @engine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @engine
    assert_response :success
  end

  test "should update engine" do
    patch :update, id: @engine, engine: { Manufacturer_id: @engine.Manufacturer_id, Prototype_id: @engine.Prototype_id, Railroad_id: @engine.Railroad_id, User_id: @engine.User_id, enginetype: @engine.enginetype, modelnumber: @engine.modelnumber, notes: @engine.notes, own: @engine.own, roadnumber: @engine.roadnumber, scale: @engine.scale }
    assert_redirected_to engine_path(assigns(:engine))
  end

  test "should destroy engine" do
    assert_difference('Engine.count', -1) do
      delete :destroy, id: @engine
    end

    assert_redirected_to engines_path
  end
end
