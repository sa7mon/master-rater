class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.where(id: params[:id]).first
    @albums = Album.where(artist_id: params[:id])
  end
end
