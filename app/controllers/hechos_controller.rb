class HechosController < ApplicationController
  before_action :set_hecho, only: [:show, :update, :destroy]

  # GET /hechos
  def index
    @hechos = Hecho.all

    render json: @hechos
  end

  # GET /hechos/1
  def show
    render json: @hecho
  end

  # POST /hechos
  def create
    @hecho = Hecho.new(hecho_params)

    if @hecho.save
      render json: @hecho, status: :created, location: @hecho
    else
      render json: @hecho.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hechos/1
  def update
    if @hecho.update(hecho_params)
      render json: @hecho
    else
      render json: @hecho.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hechos/1
  def destroy
    @hecho.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hecho
      @hecho = Hecho.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hecho_params
      params.require(:hecho).permit(:hecho_fecha, :hecho_denuncia, :hecho_registro, :hecho_reincidencia, :persona_id, :hecho_agresor, :condicion_id, :parentesco_id, :delito_id, :sitio_id)
    end
end
