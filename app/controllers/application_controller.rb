class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permited_parameters, if: :devise_controller?
  protected
    def configure_permited_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation])
    end
end
