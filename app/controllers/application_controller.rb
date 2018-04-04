class ApplicationController < ActionController::Base
  before_filter :set_current_user
  protected
  def set_current_user
    @current_user ||= Albumrater.where(:id => session[:user_id])
    redirect_to login_path and return unless @current_user
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
end
