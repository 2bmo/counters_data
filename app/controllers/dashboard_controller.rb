class DashboardController < ApplicationController

  def index
    if customer_signed_in?
      redirect_to customer_root_path
    elsif admin_signed_in?
      redirect_to admin_root_path
    end
  end
end
