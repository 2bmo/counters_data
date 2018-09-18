# frozen_string_literal: true

class Customers::RegistrationsController < Devise::RegistrationsController

  # before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update, :show]

  # GET /resource/sign_up
  def new
    super
      @customer = Customer.new
  end

  # POST /resource
  def create
    super
      @customer = Customer.new(customer_params)
      @customer.save
      bypass_sign_in @admin, scope: :admin
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :address, :login, :email, :password, :password_confirmation)
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :login, :email, :password, :password_confirmation])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address, :login, :email, :password, :password_confirmation])
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    super(resource)
      admin_root_path
  end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
