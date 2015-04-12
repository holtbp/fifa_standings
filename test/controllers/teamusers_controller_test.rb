require 'test_helper'

class TeamusersControllerTest < ActionController::TestCase
  setup do
    @teamuser = teamusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teamusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teamuser" do
    assert_difference('Teamuser.count') do
      post :create, teamuser: { is_winner: @teamuser.is_winner, score: @teamuser.score, team_id: @teamuser.team_id, user_id: @teamuser.user_id }
    end

    assert_redirected_to teamuser_path(assigns(:teamuser))
  end

  test "should show teamuser" do
    get :show, id: @teamuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teamuser
    assert_response :success
  end

  test "should update teamuser" do
    patch :update, id: @teamuser, teamuser: { is_winner: @teamuser.is_winner, score: @teamuser.score, team_id: @teamuser.team_id, user_id: @teamuser.user_id }
    assert_redirected_to teamuser_path(assigns(:teamuser))
  end

  test "should destroy teamuser" do
    assert_difference('Teamuser.count', -1) do
      delete :destroy, id: @teamuser
    end

    assert_redirected_to teamusers_path
  end
end
