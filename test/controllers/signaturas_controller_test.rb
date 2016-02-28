require 'test_helper'

class SignaturasControllerTest < ActionController::TestCase
  setup do
    @signatura = signaturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:signaturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create signatura" do
    assert_difference('Signatura.count') do
      post :create, signatura: { nomSig: @signatura.nomSig }
    end

    assert_redirected_to signatura_path(assigns(:signatura))
  end

  test "should show signatura" do
    get :show, id: @signatura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @signatura
    assert_response :success
  end

  test "should update signatura" do
    patch :update, id: @signatura, signatura: { nomSig: @signatura.nomSig }
    assert_redirected_to signatura_path(assigns(:signatura))
  end

  test "should destroy signatura" do
    assert_difference('Signatura.count', -1) do
      delete :destroy, id: @signatura
    end

    assert_redirected_to signaturas_path
  end
end
