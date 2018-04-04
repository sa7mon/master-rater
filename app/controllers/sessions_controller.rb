class SessionsController < ApplicationController
    skip_before_filter :set_current_user
    def create
        @user = Albumrater.where(uid: auth_hash[:uid], provider: auth_hash[:provider], 
        nickname: "@" + auth_hash["info"]["nickname"], description: auth_hash["info"]["description"], 
        image: auth_hash["info"]["image"]).first_or_create
        session[:user_id] = @user.id
        redirect_to root_path
    end
    
    def destroy
        session.delete(:user_id)
        flash[:notice] = 'Logged out Successfully'
        redirect_to root_path
    end

    protected  # Everything below this is now private. Don't put action methods down here.
    
    def auth_hash
    request.env['omniauth.auth']
    end

end
        