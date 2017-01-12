class DiagnozasController < ApplicationController
  before_action :set_diagnoza, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
 layout 'application'
=======

>>>>>>> ad3e4b4ecae3cf5b94d6a8b785f9aca4703b5a16
  # GET /diagnozas
  # GET /diagnozas.json
  def index
    @diagnozas = Diagnoza.all
  end

  # GET /diagnozas/1
  # GET /diagnozas/1.json
  def show
  end

  # GET /diagnozas/new
  def new
    @diagnoza = Diagnoza.new
  end

  # GET /diagnozas/1/edit
  def edit
  end

  # POST /diagnozas
  # POST /diagnozas.json
  def create
    @diagnoza = Diagnoza.new(diagnoza_params)

    respond_to do |format|
      if @diagnoza.save
        format.html { redirect_to @diagnoza, notice: 'Diagnoza was successfully created.' }
        format.json { render :show, status: :created, location: @diagnoza }
      else
        format.html { render :new }
        format.json { render json: @diagnoza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diagnozas/1
  # PATCH/PUT /diagnozas/1.json
  def update
    respond_to do |format|
      if @diagnoza.update(diagnoza_params)
        format.html { redirect_to @diagnoza, notice: 'Diagnoza was successfully updated.' }
        format.json { render :show, status: :ok, location: @diagnoza }
      else
        format.html { render :edit }
        format.json { render json: @diagnoza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diagnozas/1
  # DELETE /diagnozas/1.json
  def destroy
    @diagnoza.destroy
    respond_to do |format|
      format.html { redirect_to diagnozas_url, notice: 'Diagnoza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diagnoza
      @diagnoza = Diagnoza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diagnoza_params
      params.require(:diagnoza).permit(:typ, :opis)
    end
end
