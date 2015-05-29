class ProblemCommentsController < ApplicationController
  before_action :set_problem_comment, only: [:show, :edit, :update, :destroy]

  # GET /problem_comments
  # GET /problem_comments.json
  def index
    @problem_comments = ProblemComment.all
  end

  # GET /problem_comments/1
  # GET /problem_comments/1.json
  def show
  end

  # GET /problem_comments/new
  def new
    @problem_comment = ProblemComment.new
  end

  # GET /problem_comments/1/edit
  def edit
  end

  # POST /problem_comments
  # POST /problem_comments.json
  def create
    @problem_comment = ProblemComment.new(problem_comment_params)

    respond_to do |format|
      if @problem_comment.save
        format.html { redirect_to @problem_comment, notice: 'Problem comment was successfully created.' }
        format.json { render :show, status: :created, location: @problem_comment }
      else
        format.html { render :new }
        format.json { render json: @problem_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /problem_comments/1
  # PATCH/PUT /problem_comments/1.json
  def update
    respond_to do |format|
      if @problem_comment.update(problem_comment_params)
        format.html { redirect_to @problem_comment, notice: 'Problem comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @problem_comment }
      else
        format.html { render :edit }
        format.json { render json: @problem_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /problem_comments/1
  # DELETE /problem_comments/1.json
  def destroy
    @problem_comment.destroy
    respond_to do |format|
      format.html { redirect_to problem_comments_url, notice: 'Problem comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_problem_comment
      @problem_comment = ProblemComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def problem_comment_params
      params.require(:problem_comment).permit(:problem_id, :content)
    end
end
