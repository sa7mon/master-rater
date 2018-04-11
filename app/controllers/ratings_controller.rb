class RatingsController < ApplicationController
   
   def isLoggedIn
      # A naive used logged in check
      
      user = Albumrater.where(:id => session[:user_id])
      return !user.empty?
   end
   
   def create
      album_id = params[:album_id]
      
      # DEBUG REMOVE ME
      # flash[:notice] = "session[:used_id] = #{session[:user_id]}"
      # redirect_to album_url(album_id) and return

      if not isLoggedIn
         flash[:notice] = "Error: You must be logged in to rate albums"
         redirect_to album_url(album_id) and return
      end
      # User is logged in by this point
      
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