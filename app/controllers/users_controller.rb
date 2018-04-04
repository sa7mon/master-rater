class UsersController < ApplicationController
  def update
  end

  def edit
  end

  def show
    @user = Albumrater.where(nickname: params[:id]).first
    @image = @user.image.sub!("_normal", "_200x200").sub!("http://", "https://")
    # http://pbs.twimg.com/profile_images/671043988489539584/eel_irZJ_normal.jpg
    # https://pbs.twimg.com/profile_images/671043988489539584/eel_irZJ_400x400.jpg
  end
end
