class ParentescosController < ApplicationController
  before_action :set_parentesco, only: [:show, :update, :destroy]

  # GET /parentescos
  def index
    @parentescos = Parentesco.all

    render json: @parentescos
  end

  # GET /parentescos/1
  def show
    render json: @parentesco
  end

  # POST /parentescos
  def create
    @parentesco = Parentesco.new(parentesco_params)

    if @parentesco.save
      render json: @parentesco, status: :created, location: @parentesco
    else
      render json: @parentesco.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parentescos/1
  def update
    if @parentesco.update(parentesco_params)
      render json: @parentesco
    else
      render json: @parentesco.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parentescos/1
  def destroy
    @parentesco.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parentesco
      @parentesco = Parentesco.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def parentesco_params
      params.require(:parentesco).permit(:parentesco_nombre)
    end
end
