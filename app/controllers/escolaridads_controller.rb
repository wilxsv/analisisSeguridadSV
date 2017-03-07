class EscolaridadsController < ApplicationController
  before_action :set_escolaridad, only: [:show, :update, :destroy]

  # GET /escolaridads
  def index
    @escolaridads = Escolaridad.all

    render json: @escolaridads
  end

  # GET /escolaridads/1
  def show
    render json: @escolaridad
  end

  # POST /escolaridads
  def create
    @escolaridad = Escolaridad.new(escolaridad_params)

    if @escolaridad.save
      render json: @escolaridad, status: :created, location: @escolaridad
    else
      render json: @escolaridad.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /escolaridads/1
  def update
    if @escolaridad.update(escolaridad_params)
      render json: @escolaridad
    else
      render json: @escolaridad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /escolaridads/1
  def destroy
    @escolaridad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_escolaridad
      @escolaridad = Escolaridad.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def escolaridad_params
      params.require(:escolaridad).permit(:escolaridad_nombre)
    end
end
