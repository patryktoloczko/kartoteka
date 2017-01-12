class PacjentsController < ApplicationController
  before_action :set_pacjent, only: [:show, :edit, :update, :destroy]

  # GET /pacjents
  # GET /pacjents.json
  def index
    @pacjents = Pacjent.all
  end

  # GET /pacjents/1
  # GET /pacjents/1.json
  def show
  end

  # GET /pacjents/new
  def new
    @pacjent = Pacjent.new
  end

  # GET /pacjents/1/edit
  def edit
  end

  # POST /pacjents
  # POST /pacjents.json
  def create
    @pacjent = Pacjent.new(pacjent_params)

    respond_to do |format|
      if @pacjent.save
        format.html { redirect_to @pacjent, notice: 'Pacjent was successfully created.' }
        format.json { render :show, status: :created, location: @pacjent }
      else
        format.html { render :new }
        format.json { render json: @pacjent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacjents/1
  # PATCH/PUT /pacjents/1.json
  def update
    respond_to do |format|
      if @pacjent.update(pacjent_params)
        format.html { redirect_to @pacjent, notice: 'Pacjent was successfully updated.' }
        format.json { render :show, status: :ok, location: @pacjent }
      else
        format.html { render :edit }
        format.json { render json: @pacjent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacjents/1
  # DELETE /pacjents/1.json
  def destroy
    @pacjent.destroy
    respond_to do |format|
      format.html { redirect_to pacjents_url, notice: 'Pacjent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pacjent
      @pacjent = Pacjent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pacjent_params
      params.require(:pacjent).permit(:imie, :nazwisko, :pesel, :nrtelefonu, :email, :haslo)
    end
end
