class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :get_user
  def logged_in_redirect
    if session[:user_id]
      redirect_to "/users/#{session[:user_id]}/home"
    end
  end

  def not_logged_in_redirect
    if !session[:user_id]
      redirect_to root_path, notice: "Please log in"
    end
  end

  def month_converter month # Used in water, gas, electric bill controller
    case month
    when "January"
      return 1
    when "February"
      return 2
    when "March"
      return 3
    when "April"
      return 4
    when "May"
      return 5
    when "June"
      return 6
    when "July"
      return 7
    when "August"
      return 8
    when "September"
      return 9
    when "October"
      return 10
    when "November"
      return 11
    when "December"
      return 12
    end
  end

  private
  def get_user
    if session[:user_id]
      @current_user = User.where(id: session[:user_id]).first
    end
  end
end
