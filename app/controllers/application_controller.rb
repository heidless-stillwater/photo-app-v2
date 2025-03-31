class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameter_fields, if: :devise_controller?

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :authenticate_user!


  def stripe_payment; end
  
  protected

  def configure_permitted_parameter_fields
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :avatar, :username, images: [] ] )    # new
    devise_parameter_sanitizer.permit(:account_update, keys: [ :avatar, :username, images: [] ])   # edit
  end

end
