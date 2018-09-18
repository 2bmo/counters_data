class CustomersController < ApplicationController
  def show
    @customer = Customer.find_by_id(params[:id])
  end
end
