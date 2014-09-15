class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit

  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError do |exception|
    redirect_to (user_path(current_user) || unauthorized_root_path), alert: "That is not the page you are looking for"
  end

  def after_sign_in_path_for(resource)
    user_path(current_user)
  end

end
