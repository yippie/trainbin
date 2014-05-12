require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post :create, car: { Manufacturer_id: @car.Manufacturer_id, Railroad_id: @car.Railroad_id, User_id: @car.User_id, cartype: @car.cartype, modelnumber: @car.modelnumber, notes: @car.notes, quantity: @car.quantity, scale: @car.scale }
    end

    assert_redirected_to car_path(assigns(:car))
  end

  test "should show car" do
    get :show, id: @car
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car
    assert_response :success
  end

  test "should update car" do
    patch :update, id: @car, car: { Manufacturer_id: @car.Manufacturer_id, Railroad_id: @car.Railroad_id, User_id: @car.User_id, cartype: @car.cartype, modelnumber: @car.modelnumber, notes: @car.notes, quantity: @car.quantity, scale: @car.scale }
    assert_redirected_to car_path(assigns(:car))
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete :destroy, id: @car
    end

    assert_redirected_to cars_path
  end
end
