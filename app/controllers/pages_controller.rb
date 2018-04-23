class PagesController < ApplicationController
  def index
    @myControllerData = "Hello World"
  end

  def show
    
    @recent_album = Album.order(:created_at).limit(4)
    @recent_album_art_array = []
    i = 0
    @recent_album.each do |album|
      baseCoverArtUrl = 'https://coverartarchive.org/release/'
      @recent_album_art_array[i] = baseCoverArtUrl + @recent_album[i].musicbrainz_id + "/front-250"
      i += 1
    end
    
    @recent_album_rating = Album.order(:updated_at).limit(4)
    @recent_album_rating_art_array = []
    i = 0
    @recent_album_rating.each do |album|
      baseCoverArtUrl = 'https://coverartarchive.org/release/'
      @recent_album_rating_art_array[i] = baseCoverArtUrl + @recent_album_rating[i].musicbrainz_id + "/front-250"
      i += 1
    end
    
  end
end
