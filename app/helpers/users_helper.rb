module UsersHelper
  def friends? 
    @current_user.friends.include?(@user)
  end
end
