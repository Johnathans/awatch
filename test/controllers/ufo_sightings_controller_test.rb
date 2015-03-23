require 'test_helper'

class UfoSightingsControllerTest < ActionController::TestCase
  setup do
    @ufo_sighting = ufo_sightings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ufo_sightings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ufo_sighting" do
    assert_difference('UfoSighting.count') do
      post :create, ufo_sighting: { address: @ufo_sighting.address, craft: @ufo_sighting.craft, details: @ufo_sighting.details, latitude: @ufo_sighting.latitude, longitude: @ufo_sighting.longitude }
    end

    assert_redirected_to ufo_sighting_path(assigns(:ufo_sighting))
  end

  test "should show ufo_sighting" do
    get :show, id: @ufo_sighting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ufo_sighting
    assert_response :success
  end

  test "should update ufo_sighting" do
    patch :update, id: @ufo_sighting, ufo_sighting: { address: @ufo_sighting.address, craft: @ufo_sighting.craft, details: @ufo_sighting.details, latitude: @ufo_sighting.latitude, longitude: @ufo_sighting.longitude }
    assert_redirected_to ufo_sighting_path(assigns(:ufo_sighting))
  end

  test "should destroy ufo_sighting" do
    assert_difference('UfoSighting.count', -1) do
      delete :destroy, id: @ufo_sighting
    end

    assert_redirected_to ufo_sightings_path
  end
end
