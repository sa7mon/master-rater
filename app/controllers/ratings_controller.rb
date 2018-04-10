class RatingsController < ApplicationController
   
   def create
      
      album_id = params[:album_id]
      
      flash[:notice] = "Hello from controller!"
      redirect_to album_url(album_id)
   end
end