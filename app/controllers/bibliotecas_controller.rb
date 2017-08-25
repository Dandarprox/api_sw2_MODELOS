class BibliotecasController < ApplicationController
  before_action :set_biblioteca, only: [:show, :update, :destroy]

  # GET /profesors
  def index
    @bibliotecas = Biblioteca.all

    render json: @bibliotecas
  end

  # GET /profesors/1
  def show
    render json: @biblioteca
  end

  # POST /profesors
  def create
    @biblioteca = Biblioteca.new(biblioteca_params)

    if @biblioteca.save
      render json: @biblioteca, status: :created, location: @biblioteca
    else
      render json: @biblioteca.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profesors/1
  def update
    if @biblioteca.update(biblioteca_params)
      render json: @biblioteca
    else
      render json: @biblioteca.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profesors/1
  def destroy
    @biblioteca.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biblioteca
      @biblioteca = Biblioteca.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def biblioteca_params
      params.require(:biblioteca).permit(:nombre, :tematica, :pisos)
    end
end
