module SessionsHelper

  def create_session(user)
    session[:user_id] = user.id
  end

  def destroy_session(user)
    session[:user_Id] = nil
  end

  def current_user
    User.find_by(id: session[:user_id])
  end
  
end
