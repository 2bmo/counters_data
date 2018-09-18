# frozen_string_literal: true

class Customers::SessionsController < Devise::SessionsController

  include Accessible
  skip_before_action :check_user, only: :destroy

  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:login, :password])
  end
  def check_changed_pass
    @user = current_user
    if @user.pass_changed == @user.created_at #make sure user has changed their password before accessing internal pages
      redirect_to edit_user_registration_path, alert: "You must change your password before logging in for the first time"
    end
  end
end
