class EstadocivilsController < ApplicationController
  before_action :set_estadocivil, only: [:show, :update, :destroy]

  # GET /estadocivils
  def index
    @estadocivils = Estadocivil.all

    render json: @estadocivils
  end

  # GET /estadocivils/1
  def show
    render json: @estadocivil
  end

  # POST /estadocivils
  def create
    @estadocivil = Estadocivil.new(estadocivil_params)

    if @estadocivil.save
      render json: @estadocivil, status: :created, location: @estadocivil
    else
      render json: @estadocivil.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /estadocivils/1
  def update
    if @estadocivil.update(estadocivil_params)
      render json: @estadocivil
    else
      render json: @estadocivil.errors, status: :unprocessable_entity
    end
  end

  # DELETE /estadocivils/1
  def destroy
    @estadocivil.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estadocivil
      @estadocivil = Estadocivil.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def estadocivil_params
      params.require(:estadocivil).permit(:estadocivil_nombre)
    end
end
