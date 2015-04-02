class FriendsController < ApplicationController
  before_action :not_logged_in_redirect, only: :index
  def index
    @friends = @current_user.friends
  end

  def create
    @friendship = @current_user.friendships.build(friend_id: params[:friend_id])
    if @friendship.save
      User.find(params[:friend_id]).friendships.create(friend_id: @current_user.id)
      flash[:success] = "Added #{User.find(params[:friend_id]).first_name} as a friend!"
      redirect_to "/users/#{params[:friend_id]}"
    else
      redirect_to "/users/#{params[:friend_id]}", notice: "Unable to add #{User.find(params[:friend_id]).first_name} as a friend"
    end
  end

  def destroy
  end
end
