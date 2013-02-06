require 'test_helper'

class ComunicadosControllerTest < ActionController::TestCase
  setup do
    @comunicado = comunicados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comunicados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comunicado" do
    assert_difference('Comunicado.count') do
      post :create, comunicado: @comunicado.attributes
    end

    assert_redirected_to comunicado_path(assigns(:comunicado))
  end

  test "should show comunicado" do
    get :show, id: @comunicado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comunicado
    assert_response :success
  end

  test "should update comunicado" do
    put :update, id: @comunicado, comunicado: @comunicado.attributes
    assert_redirected_to comunicado_path(assigns(:comunicado))
  end

  test "should destroy comunicado" do
    assert_difference('Comunicado.count', -1) do
      delete :destroy, id: @comunicado
    end

    assert_redirected_to comunicados_path
  end
end
