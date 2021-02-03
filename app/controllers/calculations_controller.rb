class CalculationsController < ApplicationController
  # before_action :calculate, only: [:create]

  def index
    @calculations = Calculation.all
    render json: @calculations
  end

  def show
    @calculation = Calculation.find(params[:id])
    render json: @calculation
  end

  def create
    @total = params[:principal] * (1 + (params[:rate] * params[:years]))
    @calculation = Calculation.create(
      principal: params[:principal],
      interest: params[:interest],
      years: params[:years],
      total: @total
    )
    render json: @calculation
  end

  def destroy
    @calculation = Calculation.find(params[:id])
    @calculation.destroy
    render json: 'Calculation deleted.'
  end
end
