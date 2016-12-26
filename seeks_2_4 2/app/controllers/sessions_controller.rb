class SessionsController < ApplicationController
  def index
    if user_signed_in?
      redirect_to users_home_path
    end
  end

  def login
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.email
      redirect_to users_home_path
    else
      flash[:login_error] = ["Invalid combination"]
      redirect_to root_path
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
