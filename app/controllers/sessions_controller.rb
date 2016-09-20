class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      redirect_to '/'
    else
      render 'new'
    end
  end

  def destroy
    session.delete(:id)
    redirect_to '/login'
  end
end
