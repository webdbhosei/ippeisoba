class SolvabilitiesController < ApplicationController
  before_action :set_solvability, only: [:show, :edit, :update, :destroy]

  # GET /solvabilities
  # GET /solvabilities.json
  def index
    @solvabilities = Solvability.all
    @events = Event.all
  end

  # GET /solvabilities/1
  # GET /solvabilities/1.json
  def show
  end

  # GET /solvabilities/new
  def new
    @solvability = Solvability.new
  end

  # GET /solvabilities/1/edit
  def edit
  end

  # POST /solvabilities
  # POST /solvabilities.json
  def create
    @solvability = Solvability.new(solvability_params)

    respond_to do |format|
      if @solvability.save
        format.html { redirect_to @solvability, notice: 'Solvability was successfully created.' }
        format.json { render :show, status: :created, location: @solvability }
      else
        format.html { render :new }
        format.json { render json: @solvability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solvabilities/1
  # PATCH/PUT /solvabilities/1.json
  def update
    respond_to do |format|
      if @solvability.update(solvability_params)
        format.html { redirect_to @solvability, notice: 'Solvability was successfully updated.' }
        format.json { render :show, status: :ok, location: @solvability }
      else
        format.html { render :edit }
        format.json { render json: @solvability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solvabilities/1
  # DELETE /solvabilities/1.json
  def destroy
    @solvability.destroy
    respond_to do |format|
      format.html { redirect_to solvabilities_url, notice: 'Solvability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solvability
      @solvability = Solvability.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solvability_params
      params.require(:solvability).permit(:src_id, :dst_id)
    end
end
