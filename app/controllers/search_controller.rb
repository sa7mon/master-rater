require 'rest-client'
require 'json'

class SearchController < ApplicationController
  def index
    # https://stackoverflow.com/questions/34706919/using-multiple-like-statements-in-an-activerecord-query
    @search = params[:search]
    @searchType = params[:byWhat]
    
    # Vulnerable to SQL Injection :)
    if @searchType == "1"
      @albums = Album.where("name LIKE ?", "%#{@search}%")
    end
    if @searchType == "2"
      @artists = Artist.where("name LIKE ?", "%#{@search}%")
    end
    # TODO better failure case than dumping everything
    # if @albums.length < 1 # Only care about failures to search
    #     @albums = Album.joins(:artist, :genre)
    # end
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
    
end
