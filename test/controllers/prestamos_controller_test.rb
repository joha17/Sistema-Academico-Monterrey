require 'test_helper'

class PrestamosControllerTest < ActionController::TestCase
  setup do
    @prestamo = prestamos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prestamos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prestamo" do
    assert_difference('Prestamo.count') do
      post :create, prestamo: { CedUs: @prestamo.CedUs, FecDev: @prestamo.FecDev, FecPre: @prestamo.FecPre, FecSol: @prestamo.FecSol, i_FK_Prestamo: @prestamo.i_FK_Prestamo, i_FK_lib: @prestamo.i_FK_lib }
    end

    assert_redirected_to prestamo_path(assigns(:prestamo))
  end

  test "should show prestamo" do
    get :show, id: @prestamo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prestamo
    assert_response :success
  end

  test "should update prestamo" do
    patch :update, id: @prestamo, prestamo: { CedUs: @prestamo.CedUs, FecDev: @prestamo.FecDev, FecPre: @prestamo.FecPre, FecSol: @prestamo.FecSol, i_FK_Prestamo: @prestamo.i_FK_Prestamo, i_FK_lib: @prestamo.i_FK_lib }
    assert_redirected_to prestamo_path(assigns(:prestamo))
  end

  test "should destroy prestamo" do
    assert_difference('Prestamo.count', -1) do
      delete :destroy, id: @prestamo
    end

    assert_redirected_to prestamos_path
  end
end
