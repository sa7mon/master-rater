require 'rest-client'
require 'json'

class AlbumsController < ApplicationController
  def index
    # @albums = Album.joins(:artist)
    @albums = Album.joins(:artist, :genre)
  end
  
  def convert_ms(milliseconds)
    # https://stackoverflow.com/a/40488097
    return '' unless milliseconds

    hours, milliseconds   = milliseconds.divmod(1000 * 60 * 60)
    minutes, milliseconds = milliseconds.divmod(1000 * 60)
    seconds, milliseconds = milliseconds.divmod(1000)
    seconds = seconds.to_s.rjust(2, '0')
    "#{minutes}:#{seconds}"
  end
  
  def show
     @album = Album.joins(:artist, :genre).find(params[:id])
    # @tracks = Track.where(album_id: params[:id])
     @ratings = Rating.joins(:user).where(album_id: params[:id])
     
     ratingSum = 0
     @ratings.each do |rating|
       ratingSum += rating[:rating]
     end
     
     @avgRating = ratingSum / @ratings.length
     
     # https://github.com/rest-client/rest-client
     # https://musicbrainz.org/doc/Cover_Art_Archive/API#.2Frelease.2F.7Bmbid.7D.2F
     url = "https://musicbrainz.org/ws/2/release/#{@album.musicbrainz_id}?inc=recordings&fmt=json"

     baseCoverArtUrl = 'https://coverartarchive.org/release/'
    @coverUrl = baseCoverArtUrl + @album.musicbrainz_id + "/front-500"
    # coverArtRes = RestClient.get(@coverUrl, headers={'User-Agent' => 'Master-Rater/1.0 (salmon@protonmail.ch)'})

    res = RestClient.get(url, headers={'User-Agent' => 'Master-Rater/1.0 (salmon@protonmail.ch)'})
        
    @jsonTracks = JSON.parse(res)["media"][0]["tracks"]
    
    @tracks = Array.new
    
    @jsonTracks.each do |track|
      # Conver duration from ms to m:ss
      @tracks.push([track["position"], track["title"], convert_ms(track["length"].to_i)])
    end
    
    
    
  end
end
