class VariatonsController < ApplicationController
  before_action :set_variaton, only: %i[ show edit update destroy ]

  # GET /variatons or /variatons.json
  def index
    @variatons = Variaton.all
  end

  # GET /variatons/1 or /variatons/1.json
  def show
  end

  # GET /variatons/new
  def new
    @variaton = Variaton.new
  end

  # GET /variatons/1/edit
  def edit
  end

  # POST /variatons or /variatons.json
  def create
    @variaton = Variaton.new(variaton_params)

    respond_to do |format|
      if @variaton.save
        format.html { redirect_to variaton_url(@variaton), notice: "Variaton was successfully created." }
        format.json { render :show, status: :created, location: @variaton }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @variaton.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /variatons/1 or /variatons/1.json
  def update
    respond_to do |format|
      if @variaton.update(variaton_params)
        format.html { redirect_to variaton_url(@variaton), notice: "Variaton was successfully updated." }
        format.json { render :show, status: :ok, location: @variaton }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @variaton.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /variatons/1 or /variatons/1.json
  def destroy
    @variaton.destroy

    respond_to do |format|
      format.html { redirect_to variatons_url, notice: "Variaton was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_variaton
      @variaton = Variaton.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def variaton_params
      params.require(:variaton).permit(:product_id, :color_id, :size_id, :price, :stock, :sku)
    end
end
