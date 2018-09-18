class ColdsController < ApplicationController

  def new
    @cold = current_customer.colds.new(params[:cold])
  end

  def create
    @cold = current_customer.colds.new(params[:cold])
    @cold.save
    redirect_to customer_root_path
  end

  private
  def cold_params
    params.require(:cold).permit(:cold_water_data)
  end

end