class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(sessions[:user_id]) if sessions[:user_id]
  end
  heler_method :current_user

  def authenticate_user!
    redirect_to '/login' unless current_user
  end

  def authenticate_admin!
    redirect_to '/' unless current_user && current_user.admin
  end
end
