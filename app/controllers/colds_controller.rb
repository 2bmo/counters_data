class ColdsController < ApplicationController

  def create
    @customer = Customer.find(current_customer.id)
    @cold = @customer.colds.create(cold_params)
    redirect_to customer_root_path
  end

  private
  def cold_params
    params.require(:cold).permit(:cold_water_data)
  end

end