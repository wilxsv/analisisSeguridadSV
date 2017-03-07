class ArmasController < ApplicationController
  before_action :set_arma, only: [:show, :update, :destroy]

  # GET /armas
  def index
    @armas = Arma.all

    render json: @armas
  end

  # GET /armas/1
  def show
    render json: @arma
  end

  # POST /armas
  def create
    @arma = Arma.new(arma_params)

    if @arma.save
      render json: @arma, status: :created, location: @arma
    else
      render json: @arma.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /armas/1
  def update
    if @arma.update(arma_params)
      render json: @arma
    else
      render json: @arma.errors, status: :unprocessable_entity
    end
  end

  # DELETE /armas/1
  def destroy
    @arma.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arma
      @arma = Arma.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def arma_params
      params.require(:arma).permit(:arma_nombre, :arma_id)
    end
end
