require 'test_helper'

class NextActionsControllerTest < ActionController::TestCase
  setup do
    @next_action = next_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:next_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create next_action" do
    assert_difference('NextAction.count') do
      post :create, next_action: { due: @next_action.due, name: @next_action.name, sort: @next_action.sort, state: @next_action.state }
    end

    assert_redirected_to next_action_path(assigns(:next_action))
  end

  test "should show next_action" do
    get :show, id: @next_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @next_action
    assert_response :success
  end

  test "should update next_action" do
    put :update, id: @next_action, next_action: { due: @next_action.due, name: @next_action.name, sort: @next_action.sort, state: @next_action.state }
    assert_redirected_to next_action_path(assigns(:next_action))
  end

  test "should destroy next_action" do
    assert_difference('NextAction.count', -1) do
      delete :destroy, id: @next_action
    end

    assert_redirected_to next_actions_path
  end
end
