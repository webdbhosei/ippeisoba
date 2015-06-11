require 'test_helper'

class CausalitiesControllerTest < ActionController::TestCase
  setup do
    @causality = causalities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:causalities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create causality" do
    assert_difference('Causality.count') do
      post :create, causality: { dst_id: @causality.dst_id, src_id: @causality.src_id }
    end

    assert_redirected_to causality_path(assigns(:causality))
  end

  test "should show causality" do
    get :show, id: @causality
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @causality
    assert_response :success
  end

  test "should update causality" do
    patch :update, id: @causality, causality: { dst_id: @causality.dst_id, src_id: @causality.src_id }
    assert_redirected_to causality_path(assigns(:causality))
  end

  test "should destroy causality" do
    assert_difference('Causality.count', -1) do
      delete :destroy, id: @causality
    end

    assert_redirected_to causalities_path
  end
end
