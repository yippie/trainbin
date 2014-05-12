require 'test_helper'

class RailroadsControllerTest < ActionController::TestCase
  setup do
    @railroad = railroads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:railroads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create railroad" do
    assert_difference('Railroad.count') do
      post :create, railroad: { User_id: @railroad.User_id, name: @railroad.name, notes: @railroad.notes }
    end

    assert_redirected_to railroad_path(assigns(:railroad))
  end

  test "should show railroad" do
    get :show, id: @railroad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @railroad
    assert_response :success
  end

  test "should update railroad" do
    patch :update, id: @railroad, railroad: { User_id: @railroad.User_id, name: @railroad.name, notes: @railroad.notes }
    assert_redirected_to railroad_path(assigns(:railroad))
  end

  test "should destroy railroad" do
    assert_difference('Railroad.count', -1) do
      delete :destroy, id: @railroad
    end

    assert_redirected_to railroads_path
  end
end
