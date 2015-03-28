class UsersController < ApplicationController
  def new
  end

  def create
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
end
