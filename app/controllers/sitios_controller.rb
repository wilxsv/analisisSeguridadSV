class SitiosController < ApplicationController
  before_action :set_sitio, only: [:show, :update, :destroy]

  # GET /sitios
  def index
    @sitios = Sitio.all

    render json: @sitios
  end

  # GET /sitios/1
  def show
    render json: @sitio
  end

  # POST /sitios
  def create
    @sitio = Sitio.new(sitio_params)

    if @sitio.save
      render json: @sitio, status: :created, location: @sitio
    else
      render json: @sitio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sitios/1
  def update
    if @sitio.update(sitio_params)
      render json: @sitio
    else
      render json: @sitio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sitios/1
  def destroy
    @sitio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sitio
      @sitio = Sitio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sitio_params
      params.require(:sitio).permit(:sitio_nombre)
    end
end
