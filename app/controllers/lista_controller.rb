class ListaController < ApplicationController
  before_action :set_listum, only: [:show, :update, :destroy]

  # GET /lista
  def index
    @lista = Listum.all

    render json: @lista
  end

  # GET /lista/1
  def show
    render json: @listum
  end

  # POST /lista
  def create
    @listum = Listum.new(listum_params)

    if @listum.save
      render json: @listum, status: :created, location: @listum
    else
      render json: @listum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lista/1
  def update
    if @listum.update(listum_params)
      render json: @listum
    else
      render json: @listum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lista/1
  def destroy
    @listum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listum
      @listum = Listum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def listum_params
      params.require(:listum).permit(:user_id, :type, :description, :value)
    end
end
