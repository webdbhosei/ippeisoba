require 'test_helper'

class SolvabilityProsControllerTest < ActionController::TestCase
  setup do
    @solvability_pro = solvability_pros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solvability_pros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solvability_pro" do
    assert_difference('SolvabilityPro.count') do
      post :create, solvability_pro: { solvability_id: @solvability_pro.solvability_id, user_id: @solvability_pro.user_id }
    end

    assert_redirected_to solvability_pro_path(assigns(:solvability_pro))
  end

  test "should show solvability_pro" do
    get :show, id: @solvability_pro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solvability_pro
    assert_response :success
  end

  test "should update solvability_pro" do
    patch :update, id: @solvability_pro, solvability_pro: { solvability_id: @solvability_pro.solvability_id, user_id: @solvability_pro.user_id }
    assert_redirected_to solvability_pro_path(assigns(:solvability_pro))
  end

  test "should destroy solvability_pro" do
    assert_difference('SolvabilityPro.count', -1) do
      delete :destroy, id: @solvability_pro
    end

    assert_redirected_to solvability_pros_path
  end
end
