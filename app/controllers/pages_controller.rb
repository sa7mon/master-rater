class PagesController < ApplicationController
  
  def round_point5(input)
      # https://stackoverflow.com/a/3837211
    (input * 2).round / 2.0
  end
  
  def index
    @myControllerData = "Hello World"
  end

  def show
    
    #####  RECENT ALBUMS 
    
    @recent_album = Album.order(:created_at).limit(4)
    @recent_album_art_array = []
    i = 0
    @recent_album.each do |album|
      baseCoverArtUrl = 'https://coverartarchive.org/release/'
      @recent_album_art_array[i] = baseCoverArtUrl + @recent_album[i].musicbrainz_id + "/front-250"
      i += 1
    end
    
    ##### RECENT RATINGS
     
    # @ratings = Rating.joins(:albumrater).where(album_id: params[:id])
    
    @recent_album_rating = Rating.joins(:albumrater, :album).order(:updated_at).limit(4)
    @recent_album_rating_art_array = []
    i = 0
    @recent_album_rating.each do |rating|
      baseCoverArtUrl = 'https://coverartarchive.org/release/'
      @recent_album_rating_art_array[i] = baseCoverArtUrl + rating.album.musicbrainz_id + "/front-250"
      i += 1
    end
        
     
    # ratingSum = 0
    # @ratings.each do |rating|
    #   ratingSum += rating[:rating]
    # end
    
    # if @ratingSum == 0 or @ratings.count == 0
    #     avgRating = 0
    # else
    #     avgRating = ratingSum / @ratings.length     
    # end
    
    # avgRating = round_point5(avgRating)
    
    # parts = avgRating.to_s.split(".")
    # @avgWholeStars = parts[0].to_i
    # @avgHasHalf = parts[1].to_s == "5"

    

    
  end
end
