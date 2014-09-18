class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit

  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError do |exception|
    redirect_to user_path(current_user), alert: "That is not the page you are looking for"
  end

  rescue_from ActiveRecord::RecordNotFound, with: :render_404
  # Render 404 page when record not found
  def render_404      
     render file: "public/404.html", status: 404
  end

  def after_sign_in_path_for(resource)
    user_path(current_user)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

end
