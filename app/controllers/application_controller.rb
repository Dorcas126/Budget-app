# ApplicationController is the base controller for our Ruby on Rails application.
# It provides common functionality for all controllers and handles user authentication.
class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  before_action :update_allowed_parameters, if: :devise_controller?
  before_action :authenticate_user!

  # Redirects the user to the categories path after a successful sign-in.
  def after_sign_in_path_for(_resource)
    categories_path
  end

  protected

  # Updates the allowed parameters for sign-up and account update actions.
  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:name, :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:name, :bio, :email, :password, :current_password)
    end
  end
end
