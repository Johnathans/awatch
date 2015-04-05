require 'test_helper'

class ConspiraciesControllerTest < ActionController::TestCase
  setup do
    @conspiracy = conspiracies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conspiracies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conspiracy" do
    assert_difference('Conspiracy.count') do
      post :create, conspiracy: { body: @conspiracy.body, image: @conspiracy.image, title: @conspiracy.title }
    end

    assert_redirected_to conspiracy_path(assigns(:conspiracy))
  end

  test "should show conspiracy" do
    get :show, id: @conspiracy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conspiracy
    assert_response :success
  end

  test "should update conspiracy" do
    patch :update, id: @conspiracy, conspiracy: { body: @conspiracy.body, image: @conspiracy.image, title: @conspiracy.title }
    assert_redirected_to conspiracy_path(assigns(:conspiracy))
  end

  test "should destroy conspiracy" do
    assert_difference('Conspiracy.count', -1) do
      delete :destroy, id: @conspiracy
    end

    assert_redirected_to conspiracies_path
  end
end
