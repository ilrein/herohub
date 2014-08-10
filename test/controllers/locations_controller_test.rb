require 'test_helper'

class LocationsControllerTest < ActionController::TestCase

  def setup
    user = User.new
    user.email = 'tester@debug.com'
    user.password = '12345678'
    user.password_confirmation = '12345678'

    user.save!
    sign_in user
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
