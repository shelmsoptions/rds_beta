class ApplicationController < ActionController::Base

  private

  def require_login
    unless session[:user_id]
      flash[:alert] = "You must be logged-in to access this page, doofus!"
      redirect_to '/'
    end
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  protect_from_forgery with: :exception
end
