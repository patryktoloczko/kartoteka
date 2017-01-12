class KartoteksController < ApplicationController
  before_action :set_kartotek, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
 layout 'application'
=======

>>>>>>> ad3e4b4ecae3cf5b94d6a8b785f9aca4703b5a16
  # GET /kartoteks
  # GET /kartoteks.json
  def index
    @kartoteks = Kartotek.all
  end

  # GET /kartoteks/1
  # GET /kartoteks/1.json
  def show
  end

  # GET /kartoteks/new
  def new
    @kartotek = Kartotek.new
  end

  # GET /kartoteks/1/edit
  def edit
  end

  # POST /kartoteks
  # POST /kartoteks.json
  def create
    @kartotek = Kartotek.new(kartotek_params)

    respond_to do |format|
      if @kartotek.save
        format.html { redirect_to @kartotek, notice: 'Kartotek was successfully created.' }
        format.json { render :show, status: :created, location: @kartotek }
      else
        format.html { render :new }
        format.json { render json: @kartotek.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kartoteks/1
  # PATCH/PUT /kartoteks/1.json
  def update
    respond_to do |format|
      if @kartotek.update(kartotek_params)
        format.html { redirect_to @kartotek, notice: 'Kartotek was successfully updated.' }
        format.json { render :show, status: :ok, location: @kartotek }
      else
        format.html { render :edit }
        format.json { render json: @kartotek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kartoteks/1
  # DELETE /kartoteks/1.json
  def destroy
    @kartotek.destroy
    respond_to do |format|
      format.html { redirect_to kartoteks_url, notice: 'Kartotek was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kartotek
      @kartotek = Kartotek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kartotek_params
      params.require(:kartotek).permit(:pacjent_id, :lekarz_id, :wizyt_id, :diagnoza_id)
    end
end
