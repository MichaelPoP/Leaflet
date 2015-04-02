class GroupsController < ApplicationController
  before_action :get_group, only: [:show, :edit, :add_users, :add_user, :user_remove]
  before_action :not_logged_in_redirect, only: [:index, :new, :show]
  def index
  end

  def new
  end

  def create
    new_group = @current_user.groups.build group_params
    attempt_new_group(new_group, @current_user)
  end

  def add_users
    # @available_friends = available_friends(@current_user, @group)
    @friends = @current_user.friends
  end

  def add_user
    binding.pry
    @group.users << User.find(params[:new_user_id])
    redirect_to user_group_path
  end

  def show
    @water_bills = users_water @group
    @gas_bills = users_gas @group
    @electric_bills = users_electric @group
  end

  def edit
  end

  def update
  end

  def user_remove
    binding.pry
    @group.users.delete(User.find_by_id(params[:remove_user]))
    flash[:success] = "User removed"
    redirect_to user_group_path
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

  def users_water group
    water_bills = []
    group.users.each do |user|
      current = user.water_bills.order('year DESC, month DESC')[0]
      water_bills.push(current)
    end
    water_bills.sort {|x,y| x.amount <=> y.amount}
  end

  def users_gas group
    gas_bills = []
    group.users.each do |user|
      current = user.gas_bills.order('year DESC, month DESC')[0]
      gas_bills.push(current)
    end
    gas_bills.sort {|x,y| x.amount <=> y.amount}
  end

  def users_electric group
    electric_bills = []
    group.users.each do |user|
      current = user.electric_bills.order('year DESC, month DESC')[0]
      electric_bills.push(current)
    end
    electric_bills.sort {|x,y| x.amount <=> y.amount}
  end

  # def available_friends (user, group)
  #   user.friends.keep_if {|friend| !group.users.include?(friend)}
  # end
end
