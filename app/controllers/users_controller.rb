class UsersController < ApplicationController
  before_action :get_other_user, only: :show
  before_action :not_logged_in_redirect, only: [:home, :show, :edit]
  def new
  end

  def create
    new_user = User.new user_params
    attempt_save_user new_user
  end

  def home
    @water_bill_recent = @current_user.water_bills.order('year DESC, month DESC')[0]
    @electric_bill_recent = @current_user.electric_bills.order('year DESC, month DESC')[0]
    @gas_bill_recent = @current_user.gas_bills.order('year DESC, month DESC, created_at DESC')[0]

    @best_gas = get_best_bills[:gas]
    @best_electric = get_best_bills[:electric]
    @best_water = get_best_bills[:water]
  end

  def show
  end

  def edit
  end

  def update
    @current_user.update_attributes update_params
    redirect_to home_path
  end

  def destroy
  end

  private 
  def get_other_user
    @user = User.find_by_id(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :mantra, :password, :confirm_password, :password_digest)
  end

  def update_params
    params.require(:user).permit(:first_name, :last_name, :email, :mantra)
  end

  def attempt_save_user user
    if user.password == user.confirm_password
      if user.save
        reset_session
        session[:user_id] = user.id
        redirect_to "/users/#{user.id}/home", notice: "Thanks for signing up!"
      else
        session[:first_name] = user_params[:first_name]
        session[:last_name] = user_params[:last_name]
        session[:email] = user_params[:email]
        user.destroy
        redirect_to new_user_path, alert: user.errors.full_messages.join(", ")
      end
    else
      session[:first_name] = user_params[:first_name]
      session[:last_name] = user_params[:last_name]
      session[:email] = user_params[:email]
      redirect_to new_user_path, alert: "Please make sure your password confirmation matches"
    end
  end

  def get_best_bills
    best_bills = {}
    all_bills = {water: @current_user.water_bills, gas: @current_user.gas_bills, electric: @current_user.electric_bills}
    all_bills.each do |key, value|
      if value.length > 1
        best_bills[key] = value.sort {|x,y| x.amount <=> y.amount}[0]
      elsif value.length == 1
        best_bills[key] = value[0]
      else
        best_bills[key] = nil
      end
    end
    best_bills
  end
end
