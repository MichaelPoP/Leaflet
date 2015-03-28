class Access < ActiveRecord::Base
  
  def self.attempt_login (email=nil,password=nil) 
    if email.present? && password.present?
      found_user = User.where(email: email).first
      if found_user
        authorized_user = found_user.authenticate(password)
        if authorized_user
          session[:user_id] = found_user.id
          redirect_to Rails.application.routes.url_helpers.home_path, id: found_user.id, success: "Thanks for logging in!"
        else
          redirect_to Rails.application.routes.url_helpers.root_path, notice: "Incorrect email or password"
        end
      else
        redirect_to Rails.application.routes.url_helpers.root_path, notice: "Incorrect email or password"
      end
    else
      redirect_to Rails.application.routes.url_helpers.root_path, notice: "Please enter an email and a password"
    end
  end

end