class DelitosController < ApplicationController
  before_action :set_delito, only: [:show, :update, :destroy]

  # GET /delitos
  def index
    @delitos = Delito.all

    render json: @delitos
  end

  # GET /delitos/1
  def show
    render json: @delito
  end

  # POST /delitos
  def create
    @delito = Delito.new(delito_params)

    if @delito.save
      render json: @delito, status: :created, location: @delito
    else
      render json: @delito.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /delitos/1
  def update
    if @delito.update(delito_params)
      render json: @delito
    else
      render json: @delito.errors, status: :unprocessable_entity
    end
  end

  # DELETE /delitos/1
  def destroy
    @delito.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delito
      @delito = Delito.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def delito_params
      params.require(:delito).permit(:delito_nombre, :delito_id)
    end
end
