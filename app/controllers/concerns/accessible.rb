module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_admin
      flash.clear
      redirect_to("/admins/dashboard") && return
    elsif current_customer
      flash.clear
      redirect_to("/customers/dashboard") && return
    end
  end

end