class DeportesController < ApplicationController
  before_action :set_deporte, only: [:show, :update, :destroy]

  # GET /profesors
  def index
    @deportes = Deporte.all

    render json: @deportes
  end

  # GET /profesors/1
  def show
    render json: @deporte
  end

  # POST /profesors
  def create
    @deporte = Deporte.new(deporte_params)

    if @deporte.save
      render json: @deporte, status: :created, location: @deporte
    else
      render json: @deporte.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profesors/1
  def update
    if @deporte.update(deporte_params)
      render json: @deporte
    else
      render json: @deporte.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profesors/1
  def destroy
    @deporte.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deporte
      @deporte = Deporte.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deporte_params
      params.require(:deporte).permit(:nombre_entrenador, :num_integrantes, :tipo_depo)
    end
end
