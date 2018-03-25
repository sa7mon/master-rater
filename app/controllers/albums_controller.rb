class AlbumsController < ApplicationController
  def index
    # @albums = Album.joins(:artist)
    @albums = Album.joins(:artist, :genre)
    
    
    # Post.all :joins => [:category, :comments]
    # @albums2 = Album.find(:all, :include => :artist)
    
    # @albums3 = Album.joins("JOIN artists on artists.id = album.artist_id")
    # ^^ Works, but only SELECT's the album columns.
    
    
    # Author.joins("INNER JOIN posts ON posts.author_id = authors.id")
    # -> SELECT authors.* FROM authors INNER JOIN posts ON posts.author_id = authors.id


    @albums4 = Album.includes(:artist).all
    

  end
end
