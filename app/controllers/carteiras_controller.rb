class CarteirasController < ApplicationController
  before_action :set_carteira, only: [:show, :update, :destroy]

  # GET /carteiras
  def index
    @carteiras = Carteira.all

    render json: @carteiras
  end

  # GET /carteiras/1
  def show
    render json: @carteira
  end

  # POST /carteiras
  def create
    @carteira = Carteira.new(carteira_params)

    if @carteira.save
      render json: @carteira, status: :created, location: @carteira
    else
      render json: @carteira.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /carteiras/1
  def update
    if @carteira.update(carteira_params)
      render json: @carteira
    else
      render json: @carteira.errors, status: :unprocessable_entity
    end
  end

  # DELETE /carteiras/1
  def destroy
    @carteira.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carteira
      @carteira = Carteira.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def carteira_params
      params.require(:carteira).permit(:user_id, :value)
    end
end
