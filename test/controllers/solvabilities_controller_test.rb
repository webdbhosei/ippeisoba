require 'test_helper'

class SolvabilitiesControllerTest < ActionController::TestCase
  setup do
    @solvability = solvabilities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solvabilities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solvability" do
    assert_difference('Solvability.count') do
      post :create, solvability: { dst_id: @solvability.dst_id, src_id: @solvability.src_id }
    end

    assert_redirected_to solvability_path(assigns(:solvability))
  end

  test "should show solvability" do
    get :show, id: @solvability
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solvability
    assert_response :success
  end

  test "should update solvability" do
    patch :update, id: @solvability, solvability: { dst_id: @solvability.dst_id, src_id: @solvability.src_id }
    assert_redirected_to solvability_path(assigns(:solvability))
  end

  test "should destroy solvability" do
    assert_difference('Solvability.count', -1) do
      delete :destroy, id: @solvability
    end

    assert_redirected_to solvabilities_path
  end
end
