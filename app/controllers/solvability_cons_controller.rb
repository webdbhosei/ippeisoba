class SolvabilityConsController < ApplicationController
  before_action :set_solvability_con, only: [:show, :edit, :update, :destroy]

  # GET /solvability_cons
  # GET /solvability_cons.json
  def index
    @solvability_cons = SolvabilityCon.all
  end

  # GET /solvability_cons/1
  # GET /solvability_cons/1.json
  def show
  end

  # GET /solvability_cons/new
  def new
    @solvability_con = SolvabilityCon.new
  end

  # GET /solvability_cons/1/edit
  def edit
  end

  # POST /solvability_cons
  # POST /solvability_cons.json
  def create
    @solvability_con = SolvabilityCon.new(solvability_con_params)

    respond_to do |format|
      if @solvability_con.save
        format.html { redirect_to @solvability_con, notice: 'Solvability con was successfully created.' }
        format.json { render :show, status: :created, location: @solvability_con }
      else
        format.html { render :new }
        format.json { render json: @solvability_con.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solvability_cons/1
  # PATCH/PUT /solvability_cons/1.json
  def update
    respond_to do |format|
      if @solvability_con.update(solvability_con_params)
        format.html { redirect_to @solvability_con, notice: 'Solvability con was successfully updated.' }
        format.json { render :show, status: :ok, location: @solvability_con }
      else
        format.html { render :edit }
        format.json { render json: @solvability_con.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solvability_cons/1
  # DELETE /solvability_cons/1.json
  def destroy
    @solvability_con.destroy
    respond_to do |format|
      format.html { redirect_to solvability_cons_url, notice: 'Solvability con was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solvability_con
      @solvability_con = SolvabilityCon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solvability_con_params
      params.require(:solvability_con).permit(:solvability_id, :user_id)
    end
end
