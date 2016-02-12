require 'test_helper'

class PhotographersControllerTest < ActionController::TestCase
  setup do
    @photographer = photographers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photographers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photographer" do
    assert_difference('Photographer.count') do
      post :create, photographer: { about: @photographer.about, fburl: @photographer.fburl, name: @photographer.name, weburl: @photographer.weburl }
    end

    assert_redirected_to photographer_path(assigns(:photographer))
  end

  test "should show photographer" do
    get :show, id: @photographer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photographer
    assert_response :success
  end

  test "should update photographer" do
    patch :update, id: @photographer, photographer: { about: @photographer.about, fburl: @photographer.fburl, name: @photographer.name, weburl: @photographer.weburl }
    assert_redirected_to photographer_path(assigns(:photographer))
  end

  test "should destroy photographer" do
    assert_difference('Photographer.count', -1) do
      delete :destroy, id: @photographer
    end

    assert_redirected_to photographers_path
  end
end
