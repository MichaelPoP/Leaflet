class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new user_params
    redirect_to home_path
  end

  def home
    @user = User.where(id: params[:id]).first
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_digest)
  end
end
