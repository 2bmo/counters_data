class CustomersController < ApplicationController
  def new
    @customer = Customer.new(
      id: current_customer.id
    )
  end
end
