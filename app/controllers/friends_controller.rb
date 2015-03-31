class FriendsController < ApplicationController
  before_action :not_logged_in_redirect, only: :index
  def index
  end

  def create
  end

  def destroy
  end
end
