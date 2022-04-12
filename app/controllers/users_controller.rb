class UsersController < ApplicationController
  def new
  end

  def create
    puts user_params
    user = User.new(user_params, email: user_params[:email].downcase())
    puts "Testing -------> user: #{user}"
    if user.save
      session[:user_id] = user.id
      redirect_to :root
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :password_confirmation
    )
    email = params[:email]
    params[:email] = email.downcase
    params
  end
end
