require 'test_helper'

class SolvabilityConsControllerTest < ActionController::TestCase
  setup do
    @solvability_con = solvability_cons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solvability_cons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solvability_con" do
    assert_difference('SolvabilityCon.count') do
      post :create, solvability_con: { solvability_id: @solvability_con.solvability_id, user_id: @solvability_con.user_id }
    end

    assert_redirected_to solvability_con_path(assigns(:solvability_con))
  end

  test "should show solvability_con" do
    get :show, id: @solvability_con
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solvability_con
    assert_response :success
  end

  test "should update solvability_con" do
    patch :update, id: @solvability_con, solvability_con: { solvability_id: @solvability_con.solvability_id, user_id: @solvability_con.user_id }
    assert_redirected_to solvability_con_path(assigns(:solvability_con))
  end

  test "should destroy solvability_con" do
    assert_difference('SolvabilityCon.count', -1) do
      delete :destroy, id: @solvability_con
    end

    assert_redirected_to solvability_cons_path
  end
end
