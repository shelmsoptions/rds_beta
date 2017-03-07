class SessionsController < ApplicationController

  def index
    @user = User.new
  end

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    puts "user =", user
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to users_path(session[:user_id])
    else
      flash[:alert] = "Credentials incorrect or not found"
      redirect_to '/'
    end
  end

  def destroy
    reset_session
    redirect_to '/'
  end
end
