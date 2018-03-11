class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.active = "yes"
    @user.chance = 3
    if @user.save
      flash[:success] = "Your account was successfully created"
      redirect_to login_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:username, :password)
    end
end