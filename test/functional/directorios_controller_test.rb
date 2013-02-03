require 'test_helper'

class DirectoriosControllerTest < ActionController::TestCase
  setup do
    @directorio = directorios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:directorios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create directorio" do
    assert_difference('Directorio.count') do
      post :create, directorio: @directorio.attributes
    end

    assert_redirected_to directorio_path(assigns(:directorio))
  end

  test "should show directorio" do
    get :show, id: @directorio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @directorio
    assert_response :success
  end

  test "should update directorio" do
    put :update, id: @directorio, directorio: @directorio.attributes
    assert_redirected_to directorio_path(assigns(:directorio))
  end

  test "should destroy directorio" do
    assert_difference('Directorio.count', -1) do
      delete :destroy, id: @directorio
    end

    assert_redirected_to directorios_path
  end
end
