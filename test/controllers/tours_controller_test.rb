require 'test_helper'

class ToursControllerTest < ActionController::TestCase
  setup do
    @tour = tours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tour" do
    assert_difference('Tour.count') do
      post :create, tour: { begin_at: @tour.begin_at, city: @tour.city, country: @tour.country, description: @tour.description, expected_at: @tour.expected_at, price: @tour.price, transport: @tour.transport, travel: @tour.travel }
    end

    assert_redirected_to tour_path(assigns(:tour))
  end

  test "should show tour" do
    get :show, id: @tour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tour
    assert_response :success
  end

  test "should update tour" do
    patch :update, id: @tour, tour: { begin_at: @tour.begin_at, city: @tour.city, country: @tour.country, description: @tour.description, expected_at: @tour.expected_at, price: @tour.price, transport: @tour.transport, travel: @tour.travel }
    assert_redirected_to tour_path(assigns(:tour))
  end

  test "should destroy tour" do
    assert_difference('Tour.count', -1) do
      delete :destroy, id: @tour
    end

    assert_redirected_to tours_path
  end
end
