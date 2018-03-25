class AlbumsController < ApplicationController
  def index
    # @albums = Album.joins(:artist)
    @albums = Album.joins(:artist, :genre)
  end
  
  def show
     @album = Album.joins(:artist, :genre).find(params[:id])
     @tracks = Track.where(album_id: params[:id])
     @ratings = Rating.joins(:user).where(album_id: params[:id])
  end
end
