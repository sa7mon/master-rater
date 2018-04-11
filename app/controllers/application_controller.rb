class ApplicationController < ActionController::Base
  
  def isLoggedIn
      # A naive used logged in check
      user = Albumrater.where(:id => session[:user_id])
      return !user.empty?
  end
  
  before_filter :set_current_user
  protected
  def set_current_user
    if Albumrater.where(:id => session[:user_id]).count > 0
      @current_user = Albumrater.where(:id => session[:user_id]).first
      redirect_to login_path and return unless @current_user
    end
  end
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
end
