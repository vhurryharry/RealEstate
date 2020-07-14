class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @existing = User.find_by(username: params[:user][:username])

    if @existing
      redirect_to '/users/new'
    else
      @user = User.create(params.require(:user).permit(:username, :role, :password))
      session[:user_id] = @user.id
      redirect_to '/'
    end
  end
end
