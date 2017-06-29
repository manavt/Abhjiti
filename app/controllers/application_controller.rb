class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user
  # authenticate_user will execute before every action comes from cliest ans request

  def  authenticate_user
     if session[:user_id].blank?
      redirect_to root_path
    end
  end

  helper_method :logged_in_as # this helper method can get call by any template for this app
  def logged_in_as
    user = User.find session[:user_id]
    "Logged in as #{user.email}"
  end
end
