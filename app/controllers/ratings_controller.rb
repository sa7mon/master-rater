class RatingsController < ApplicationController
   
   def create
      
      # A naive user logged in check
      if session[:user_id] != nil
         logged_in = true
      else
         logged_in = false
         flash[:notice] = "Error: You must be logged in to rate albums"
         redirect_to album_url(album_id)
      end
      
      # User is logged in by this point
      
      album_id = params[:album_id]
      
      # Either create a new rating or grab the first one
      ratingRecord = Rating.where(:album_id => album_id, 
                           :albumrater_id => session[:user_id])
      
      if ratingRecord.empty?
         # This user hasn't rated this album yet.
         # notice = "User hasn't rated this album yet!"
         
         ratingRecord = Rating.where(:album_id => album_id, 
                           :albumrater_id => session[:user_id],
                           :rating => params[:rating]).create
         notice = "Created album rating successfully!"
      else
         rating = ratingRecord.first
         rating.update(:rating => params[:rating])
         notice = "Updated album rating successfully!"
      end
      
      flash[:notice] = notice
      redirect_to album_url(album_id)
   end
end