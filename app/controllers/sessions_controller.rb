class SessionsController < ApplicationController
    skip_before_filter :set_current_user
    def create
        auth=request.env["omniauth.auth"]
        user=Albumrater.where(:provider => auth["provider"], :uid => auth["uid"]) || Albumrater.create_with_omniauth(auth)
        session[:user_id] = user.id
        redirect_to root_path
    end
   
    def destroy
        session.delete(:user_id)
        flash[:notice] = 'Logged out Successfully'
        redirect_to root_path
    end
end
        