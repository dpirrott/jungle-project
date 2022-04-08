class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
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
  end
end
