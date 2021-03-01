class HistoricosController < ApplicationController
  before_action :set_historico, only: [:show, :update, :destroy]

  # GET /historicos
  def index
    @historicos = Historico.all

    render json: @historicos
  end

  # GET /historicos/1
  def show
    render json: @historico
  end

  # POST /historicos
  def create
    @historico = Historico.new(historico_params)

    if @historico.save
      render json: @historico, status: :created, location: @historico
    else
      render json: @historico.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /historicos/1
  def update
    if @historico.update(historico_params)
      render json: @historico
    else
      render json: @historico.errors, status: :unprocessable_entity
    end
  end

  # DELETE /historicos/1
  def destroy
    @historico.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historico
      @historico = Historico.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def historico_params
      params.require(:historico).permit(:user_id)
    end
end
