require 'test_helper'

class Admin::HotelsControllerTest < ActionController::TestCase
  setup do
    @hotel = hotels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hotels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hotel" do
    assert_difference('Hotel.count') do
      post :create, hotel: { about_hotel: @hotel.about_hotel, address: @hotel.address, hotel_name: @hotel.hotel_name, latitude: @hotel.latitude, longitude: @hotel.longitude }
    end

    assert_redirected_to admin_hotel_path(assigns(:hotel))
  end

  test "should show hotel" do
    get :show, id: @hotel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hotel
    assert_response :success
  end

  test "should update hotel" do
    patch :update, id: @hotel, hotel: { about_hotel: @hotel.about_hotel, address: @hotel.address, hotel_name: @hotel.hotel_name, latitude: @hotel.latitude, longitude: @hotel.longitude }
    assert_redirected_to admin_hotel_path(assigns(:hotel))
  end

  test "should destroy hotel" do
    assert_difference('Hotel.count', -1) do
      delete :destroy, id: @hotel
    end

    assert_redirected_to admin_hotels_path
  end
end
