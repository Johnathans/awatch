require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get terms" do
    get :terms
    assert_response :success
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get advertising" do
    get :advertising
    assert_response :success
  end

  test "should get write" do
    get :write
    assert_response :success
  end

end
