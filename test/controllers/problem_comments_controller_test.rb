require 'test_helper'

class ProblemCommentsControllerTest < ActionController::TestCase
  setup do
    @problem_comment = problem_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:problem_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create problem_comment" do
    assert_difference('ProblemComment.count') do
      post :create, problem_comment: { content: @problem_comment.content, problem_id: @problem_comment.problem_id }
    end

    assert_redirected_to problem_comment_path(assigns(:problem_comment))
  end

  test "should show problem_comment" do
    get :show, id: @problem_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @problem_comment
    assert_response :success
  end

  test "should update problem_comment" do
    patch :update, id: @problem_comment, problem_comment: { content: @problem_comment.content, problem_id: @problem_comment.problem_id }
    assert_redirected_to problem_comment_path(assigns(:problem_comment))
  end

  test "should destroy problem_comment" do
    assert_difference('ProblemComment.count', -1) do
      delete :destroy, id: @problem_comment
    end

    assert_redirected_to problem_comments_path
  end
end
