require 'test_helper'

class PrestamoEstadosControllerTest < ActionController::TestCase
  setup do
    @prestamo_estado = prestamo_estados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prestamo_estados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prestamo_estado" do
    assert_difference('PrestamoEstado.count') do
      post :create, prestamo_estado: { desEstPres: @prestamo_estado.desEstPres, nomEstPres: @prestamo_estado.nomEstPres }
    end

    assert_redirected_to prestamo_estado_path(assigns(:prestamo_estado))
  end

  test "should show prestamo_estado" do
    get :show, id: @prestamo_estado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prestamo_estado
    assert_response :success
  end

  test "should update prestamo_estado" do
    patch :update, id: @prestamo_estado, prestamo_estado: { desEstPres: @prestamo_estado.desEstPres, nomEstPres: @prestamo_estado.nomEstPres }
    assert_redirected_to prestamo_estado_path(assigns(:prestamo_estado))
  end

  test "should destroy prestamo_estado" do
    assert_difference('PrestamoEstado.count', -1) do
      delete :destroy, id: @prestamo_estado
    end

    assert_redirected_to prestamo_estados_path
  end
end
