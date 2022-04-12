class SessionsController < ApplicationController

  def new
    @error ||= nil
  end

  def create
    user = User.authenticate_with_credentials(params[:session][:email], params[:session][:password])
    if user
      session[:user_id] = user.id
      redirect_to :root
    else
      @error = "Incorrect login information"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    render :new
  end


end
