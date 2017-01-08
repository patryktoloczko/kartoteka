class LekarzsController < ApplicationController
  before_action :set_lekarz, only: [:show, :edit, :update, :destroy]

  # GET /lekarzs
  # GET /lekarzs.json
  def index
    @lekarzs = Lekarz.all
  end

  # GET /lekarzs/1
  # GET /lekarzs/1.json
  def show
  end

  # GET /lekarzs/new
  def new
    @lekarz = Lekarz.new
  end

  # GET /lekarzs/1/edit
  def edit
  end

  # POST /lekarzs
  # POST /lekarzs.json
  def create
    @lekarz = Lekarz.new(lekarz_params)

    respond_to do |format|
      if @lekarz.save
        format.html { redirect_to @lekarz, notice: 'Lekarz was successfully created.' }
        format.json { render :show, status: :created, location: @lekarz }
      else
        format.html { render :new }
        format.json { render json: @lekarz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lekarzs/1
  # PATCH/PUT /lekarzs/1.json
  def update
    respond_to do |format|
      if @lekarz.update(lekarz_params)
        format.html { redirect_to @lekarz, notice: 'Lekarz was successfully updated.' }
        format.json { render :show, status: :ok, location: @lekarz }
      else
        format.html { render :edit }
        format.json { render json: @lekarz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lekarzs/1
  # DELETE /lekarzs/1.json
  def destroy
    @lekarz.destroy
    respond_to do |format|
      format.html { redirect_to lekarzs_url, notice: 'Lekarz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lekarz
      @lekarz = Lekarz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lekarz_params
      params.require(:lekarz).permit(:imie, :nazwisko, :specjalizacja, :nrTelefonu, :email, :haslo)
    end
end
