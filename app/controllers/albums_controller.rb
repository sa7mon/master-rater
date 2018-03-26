require 'rest-client'
# require 'http'
# require 'net/http'



class AlbumsController < ApplicationController
  def index
    # @albums = Album.joins(:artist)
    @albums = Album.joins(:artist, :genre)
  end
  
  def show
     @album = Album.joins(:artist, :genre).find(params[:id])
    # @tracks = Track.where(album_id: params[:id])
     @ratings = Rating.joins(:user).where(album_id: params[:id])
     # https://github.com/rest-client/rest-client
     # https://musicbrainz.org/doc/Cover_Art_Archive/API#.2Frelease.2F.7Bmbid.7D.2F
     url = 'https://musicbrainz.org/ws/2/release/80cf0227-b96a-491c-9097-84c55d18f050?inc=recordings&fmt=json'

    # require 'net/http'
     require 'json'
    # require 'uri'
       
    # url = 'https://api.spotify.com/v1/search?type=artist&q=tycho'
    
    # uri = URI.parse(url)
    # puts "HOST: " + uri.host
    # https = Net::HTTP.new(uri.host,uri.port)
    # https.use_ssl = true
    # req = Net::HTTP::Post.new(uri.path, initheader = {'User-Agent' => 'Master-Rater/1.0 (salmon@protonmail.ch)'})
    # res = https.request(req)
    
    res = RestClient.get(url, headers={'User-Agent' => 'Master-Rater/1.0 (salmon@protonmail.ch)'})
        
    
    # uri = URI(url)
    # req = Net::HTTP.get.new(uri, initheader = {'User-Agent' => 'Master-Rater/1.0 (salmon@protonmail.ch)'})
    # # Net::HTTP::Post.new
    # res = https.request(req)
    # @spotifyResponse = res)
    @tracks = JSON.parse(res)["media"][0]["tracks"]
    
    # @tracksRequest = res
     
  end
end
