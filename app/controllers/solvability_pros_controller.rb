class SolvabilityProsController < ApplicationController
  before_action :set_solvability_pro, only: [:show, :edit, :update, :destroy]

  # GET /solvability_pros
  # GET /solvability_pros.json
  def index
    @solvability_pros = SolvabilityPro.all
  end

  # GET /solvability_pros/1
  # GET /solvability_pros/1.json
  def show
  end

  # GET /solvability_pros/new
  def new
    @solvability_pro = SolvabilityPro.new
  end

  # GET /solvability_pros/1/edit
  def edit
  end

  # POST /solvability_pros
  # POST /solvability_pros.json
  def create
    @solvability_pro = SolvabilityPro.new(solvability_pro_params)

    respond_to do |format|
      if @solvability_pro.save
        format.html { redirect_to @solvability_pro, notice: 'Solvability pro was successfully created.' }
        format.json { render :show, status: :created, location: @solvability_pro }
      else
        format.html { render :new }
        format.json { render json: @solvability_pro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solvability_pros/1
  # PATCH/PUT /solvability_pros/1.json
  def update
    respond_to do |format|
      if @solvability_pro.update(solvability_pro_params)
        format.html { redirect_to @solvability_pro, notice: 'Solvability pro was successfully updated.' }
        format.json { render :show, status: :ok, location: @solvability_pro }
      else
        format.html { render :edit }
        format.json { render json: @solvability_pro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solvability_pros/1
  # DELETE /solvability_pros/1.json
  def destroy
    @solvability_pro.destroy
    respond_to do |format|
      format.html { redirect_to solvability_pros_url, notice: 'Solvability pro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solvability_pro
      @solvability_pro = SolvabilityPro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solvability_pro_params
      params.require(:solvability_pro).permit(:solvability_id, :user_id)
    end
end
