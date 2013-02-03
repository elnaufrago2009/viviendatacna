require 'test_helper'

class InstitucionalsControllerTest < ActionController::TestCase
  setup do
    @institucional = institucionals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institucionals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institucional" do
    assert_difference('Institucional.count') do
      post :create, institucional: @institucional.attributes
    end

    assert_redirected_to institucional_path(assigns(:institucional))
  end

  test "should show institucional" do
    get :show, id: @institucional
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institucional
    assert_response :success
  end

  test "should update institucional" do
    put :update, id: @institucional, institucional: @institucional.attributes
    assert_redirected_to institucional_path(assigns(:institucional))
  end

  test "should destroy institucional" do
    assert_difference('Institucional.count', -1) do
      delete :destroy, id: @institucional
    end

    assert_redirected_to institucionals_path
  end
end
