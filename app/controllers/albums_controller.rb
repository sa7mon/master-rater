class AlbumsController < ApplicationController
  def index
    # @albums = Album.joins(:artist)
    @albums = Album.joins(:artist, :genre)
  end
  
  def show
     @album = Album.joins(:artist, :genre).find(params[:id])
  end
end
