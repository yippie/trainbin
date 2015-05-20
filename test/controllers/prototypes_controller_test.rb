require 'test_helper'

class PrototypesControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @prototype = prototypes(:one)
    @prototype.User_id = @user.id;
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prototypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prototype" do
    assert_difference('Prototype.count') do
      post :create, prototype: { User_id: @prototype.User_id, enginetype: @prototype.enginetype, manufacturer: @prototype.manufacturer, model: @prototype.model, name: @prototype.name, notes: @prototype.notes }
    end

    assert_redirected_to prototype_path(assigns(:prototype))
  end

  test "should show prototype" do
    get :show, id: @prototype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prototype
    assert_response :success
  end

  test "should update prototype" do
    patch :update, id: @prototype, prototype: { User_id: @prototype.User_id, enginetype: @prototype.enginetype, manufacturer: @prototype.manufacturer, model: @prototype.model, name: @prototype.name, notes: @prototype.notes }
    assert_redirected_to prototype_path(assigns(:prototype))
  end

  test "should destroy prototype" do
    assert_difference('Prototype.count', -1) do
      delete :destroy, id: @prototype
    end

    assert_redirected_to prototypes_path
  end
end
