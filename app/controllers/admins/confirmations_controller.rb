# frozen_string_literal: true

class Admins::ConfirmationsController < Devise::ConfirmationsController

  include Accessible
  skip_before_action :check_user, only: [:destroy, :edit]

  # GET /resource/confirmation/new
  # def new
  #   super
  # end

  # POST /resource/confirmation
  # def create
  #   super
  # end

  # GET /resource/confirmation?confirmation_token=abcdef
  # def show
  #   super
  # end

  # protected

  # The path used after resending confirmation instructions.
  def after_resending_confirmation_instructions_path_for(resource_name)
    super
      redirect_to "/admins/password/edit"
  end

  # The path used after confirmation.
  # def after_confirmation_path_for(resource_name, resource)
  #   super(resource_name, resource)
  # end
  #

end
