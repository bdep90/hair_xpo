class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(user_name: params[:user_name])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user
    else
      redirect_to("/signin")
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to("/")
  end
end
