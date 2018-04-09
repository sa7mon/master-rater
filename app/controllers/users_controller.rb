class UsersController < ApplicationController
  def update
  end

  def edit
  end

  def show
    @user = Albumrater.where(nickname: params[:id]).first
    if @user != nil
      @image = @user.image.sub!("_normal", "_200x200").sub!("http://", "https://")
      # http://pbs.twimg.com/profile_images/671043988489539584/eel_irZJ_normal.jpg
      # https://pbs.twimg.com/profile_images/671043988489539584/eel_irZJ_400x400.jpg
      
      @ratings = Rating.joins(:albumrater, :album).where("albumraters.nickname = ?", params[:id]).order(created_at: :desc)
      @ratings2 = Rating.joins(:albumrater, :album).where("albumraters.nickname = ?", params[:id]).order(rating: :desc)
    end
  end
end
