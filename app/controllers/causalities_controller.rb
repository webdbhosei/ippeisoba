class CausalitiesController < ApplicationController
  before_action :set_causality, only: [:show, :edit, :update, :destroy]

  # GET /causalities
  # GET /causalities.json
  def index
    @causalities = Causality.all
    @events = Event.all
  end

  # GET /causalities/1
  # GET /causalities/1.json
  def show
  end

  # GET /causalities/new
  def new
    @causality = Causality.new
  end

  # GET /causalities/1/edit
  def edit
  end

  # POST /causalities
  # POST /causalities.json
  def create
    @causality = Causality.new(causality_params)

    respond_to do |format|
      if @causality.save
        format.html { redirect_to @causality, notice: 'Causality was successfully created.' }
        format.json { render :show, status: :created, location: @causality }
      else
        format.html { render :new }
        format.json { render json: @causality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /causalities/1
  # PATCH/PUT /causalities/1.json
  def update
    respond_to do |format|
      if @causality.update(causality_params)
        format.html { redirect_to @causality, notice: 'Causality was successfully updated.' }
        format.json { render :show, status: :ok, location: @causality }
      else
        format.html { render :edit }
        format.json { render json: @causality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /causalities/1
  # DELETE /causalities/1.json
  def destroy
    @causality.destroy
    respond_to do |format|
      format.html { redirect_to causalities_url, notice: 'Causality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_causality
      @causality = Causality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def causality_params
      params.require(:causality).permit(:src_id, :dst_id)
    end
end
