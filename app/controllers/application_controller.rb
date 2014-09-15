class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authorize_user
    unless @user == current_user
      redirect_to user_path(current_user), alert: "That is not the page you are looking for"
    end
  end
end
