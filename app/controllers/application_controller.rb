class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:email, :password, :user_name)
    end

    devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(:email, :password, :user_name)
    end

    devise_parameter_sanitizer.permit(:sign_in) do |user|
      user.permit(:login, :password, :remember_me)
    end
  end

  def after_sign_in_path_for(resource)
    products_path
  end

  def after_update_path_for(resource)
    products_path(resource)
  end
end
