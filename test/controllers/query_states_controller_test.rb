require 'test_helper'

class QueryStatesControllerTest < ActionController::TestCase
  setup do
    @query_state = query_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:query_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create query_state" do
    assert_difference('QueryState.count') do
      post :create, query_state: { DesCon: @query_state.DesCon }
    end

    assert_redirected_to query_state_path(assigns(:query_state))
  end

  test "should show query_state" do
    get :show, id: @query_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @query_state
    assert_response :success
  end

  test "should update query_state" do
    patch :update, id: @query_state, query_state: { DesCon: @query_state.DesCon }
    assert_redirected_to query_state_path(assigns(:query_state))
  end

  test "should destroy query_state" do
    assert_difference('QueryState.count', -1) do
      delete :destroy, id: @query_state
    end

    assert_redirected_to query_states_path
  end
end
