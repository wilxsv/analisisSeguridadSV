class CondicionsController < ApplicationController
  before_action :set_condicion, only: [:show, :update, :destroy]

  # GET /condicions
  def index
    @condicions = Condicion.all

    render json: @condicions
  end

  # GET /condicions/1
  def show
    render json: @condicion
  end

  # POST /condicions
  def create
    @condicion = Condicion.new(condicion_params)

    if @condicion.save
      render json: @condicion, status: :created, location: @condicion
    else
      render json: @condicion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /condicions/1
  def update
    if @condicion.update(condicion_params)
      render json: @condicion
    else
      render json: @condicion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /condicions/1
  def destroy
    @condicion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condicion
      @condicion = Condicion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def condicion_params
      params.require(:condicion).permit(:condicion_nombre)
    end
end
