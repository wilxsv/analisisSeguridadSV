class EtniaController < ApplicationController
  before_action :set_etnium, only: [:show, :update, :destroy]

  # GET /etnia
  def index
    @etnia = Etnium.all

    render json: @etnia
  end

  # GET /etnia/1
  def show
    render json: @etnium
  end

  # POST /etnia
  def create
    @etnium = Etnium.new(etnium_params)

    if @etnium.save
      render json: @etnium, status: :created, location: @etnium
    else
      render json: @etnium.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /etnia/1
  def update
    if @etnium.update(etnium_params)
      render json: @etnium
    else
      render json: @etnium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /etnia/1
  def destroy
    @etnium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etnium
      @etnium = Etnium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def etnium_params
      params.require(:etnium).permit(:etnia_nombre)
    end
end
