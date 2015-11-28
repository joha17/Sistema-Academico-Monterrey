require 'test_helper'

class DescartesControllerTest < ActionController::TestCase
  setup do
    @descarte = descartes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:descartes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create descarte" do
    assert_difference('Descarte.count') do
      post :create, descarte: { fechaDesc: @descarte.fechaDesc, libro_id: @descarte.libro_id, obserDesc: @descarte.obserDesc, signatura_id: @descarte.signatura_id, user_id: @descarte.user_id }
    end

    assert_redirected_to descarte_path(assigns(:descarte))
  end

  test "should show descarte" do
    get :show, id: @descarte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @descarte
    assert_response :success
  end

  test "should update descarte" do
    patch :update, id: @descarte, descarte: { fechaDesc: @descarte.fechaDesc, libro_id: @descarte.libro_id, obserDesc: @descarte.obserDesc, signatura_id: @descarte.signatura_id, user_id: @descarte.user_id }
    assert_redirected_to descarte_path(assigns(:descarte))
  end

  test "should destroy descarte" do
    assert_difference('Descarte.count', -1) do
      delete :destroy, id: @descarte
    end

    assert_redirected_to descartes_path
  end
end
