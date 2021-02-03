require 'byebug'

class CalculationsController < ApplicationController

  def index
    @calculations = Calculation.all
    render json: @calculations
  end

  def show
    @calculation = Calculation.find(params[:id])
    render json: @calculation
  end

  def create
    @principal = params[:principal].to_f
    @interest = params[:interest].to_f
    @years = params[:years].to_i
    @total = @principal * (1 + (@interest * @years))
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

  def delete_all
    @calculations = Calculation.all
    @calculations.destroy
    render json: 'All deleted.'
  end
end
