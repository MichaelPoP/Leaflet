class GroupsController < ApplicationController
  before_action :get_group, only: [:show, :edit]
  before_action :not_logged_in_redirect, only: [:index, :new, :show]
  def index
  end

  def new
  end

  def create
    new_group = @current_user.groups.build group_params
    attempt_new_group(new_group, @current_user)
  end

  def show
  end

  def edit
  end

  def update
  end

  def user_remove
  end

  def destroy
  end

  private
  def group_params
    params.require(:group).permit(:name)
  end

  def get_group
    @group = Group.find_by_id(params[:id])
  end

  def attempt_new_group (group, user)
    session[:group_name] = group.name
    if group.save
      session[:group_name] = nil
      user.groups << group
      redirect_to "/users/#{params[:user_id]}/groups/#{group.id}", notice: "Nice group!"
    else
      if group.name
        redirect_to new_user_group_path, alert: "Sorry, that group name is already taken"
      else
        redirect_to new_user_group_path, alert: "Please enter a group name"
      end
    end
  end
end
