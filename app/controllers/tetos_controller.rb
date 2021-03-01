class TetosController < ApplicationController
  before_action :set_teto, only: [:show, :update, :destroy]

  # GET /tetos
  def index
    @tetos = Teto.all

    render json: @tetos
  end

  # GET /tetos/1
  def show
    render json: @teto
  end

  # POST /tetos
  def create
    @teto = Teto.new(teto_params)

    if @teto.save
      render json: @teto, status: :created, location: @teto
    else
      render json: @teto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tetos/1
  def update
    if @teto.update(teto_params)
      render json: @teto
    else
      render json: @teto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tetos/1
  def destroy
    @teto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teto
      @teto = Teto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def teto_params
      params.require(:teto).permit(:user_id, :value)
    end
end
