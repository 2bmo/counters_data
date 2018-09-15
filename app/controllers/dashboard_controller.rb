class DashboardController < ApplicationController

  include Accessible
  skip_before_action :check_user, only: :destroy

  def index
  end

end
