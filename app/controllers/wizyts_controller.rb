class WizytsController < ApplicationController
  before_action :set_wizyt, only: [:show, :edit, :update, :destroy]

  # GET /wizyts
  # GET /wizyts.json
  def index
    @wizyts = Wizyt.all
  end

  # GET /wizyts/1
  # GET /wizyts/1.json
  def show
  end

  # GET /wizyts/new
  def new
    @wizyt = Wizyt.new
  end

  # GET /wizyts/1/edit
  def edit
  end

  # POST /wizyts
  # POST /wizyts.json
  def create
    @wizyt = Wizyt.new(wizyt_params)

    respond_to do |format|
      if @wizyt.save
        format.html { redirect_to @wizyt, notice: 'Wizyt was successfully created.' }
        format.json { render :show, status: :created, location: @wizyt }
      else
        format.html { render :new }
        format.json { render json: @wizyt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wizyts/1
  # PATCH/PUT /wizyts/1.json
  def update
    respond_to do |format|
      if @wizyt.update(wizyt_params)
        format.html { redirect_to @wizyt, notice: 'Wizyt was successfully updated.' }
        format.json { render :show, status: :ok, location: @wizyt }
      else
        format.html { render :edit }
        format.json { render json: @wizyt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wizyts/1
  # DELETE /wizyts/1.json
  def destroy
    @wizyt.destroy
    respond_to do |format|
      format.html { redirect_to wizyts_url, notice: 'Wizyt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wizyt
      @wizyt = Wizyt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wizyt_params
      params.require(:wizyt).permit(:data, :lekarz_id, :pacjent_id)
    end
end
