class AccessController < ApplicationController
  def log_in
    attempt_login(params[:email], params[:password])
  end

  def sign_out
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def attempt_login (email=nil,password=nil) 
    if email.present? && password.present?
      found_user = User.where(email: email).first
      if found_user
        authorized_user = found_user.authenticate(password)
        if authorized_user
          session[:user_id] = found_user.id
          flash[:success] = "Thanks for logging in!"
          redirect_to "/users/#{found_user.id}/home"
        else
          redirect_to root_path, notice: "Incorrect email or password"
        end
      else
        redirect_to root_path, notice: "Incorrect email or password"
      end
    else
      redirect_to root_path, notice: "Please enter an email and a password"
    end
  end
  
end
