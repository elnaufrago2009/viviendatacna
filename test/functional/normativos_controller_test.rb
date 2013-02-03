require 'test_helper'

class NormativosControllerTest < ActionController::TestCase
  setup do
    @normativo = normativos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:normativos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create normativo" do
    assert_difference('Normativo.count') do
      post :create, normativo: @normativo.attributes
    end

    assert_redirected_to normativo_path(assigns(:normativo))
  end

  test "should show normativo" do
    get :show, id: @normativo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @normativo
    assert_response :success
  end

  test "should update normativo" do
    put :update, id: @normativo, normativo: @normativo.attributes
    assert_redirected_to normativo_path(assigns(:normativo))
  end

  test "should destroy normativo" do
    assert_difference('Normativo.count', -1) do
      delete :destroy, id: @normativo
    end

    assert_redirected_to normativos_path
  end
end
