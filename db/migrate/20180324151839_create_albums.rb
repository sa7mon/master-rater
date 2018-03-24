class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.date    "release_date"
      t.string  "label"
      t.string  "name", :null => false
      t.string  "total_time"
      
      t.integer "genre_id", :null => false  # genre_id NOT NULL, FK -> genre.genre_id
      t.foreign_key :genre, :id => :genre_id
      
      t.integer "artist_id", :null => false  # artist_id NOT NULL
      t.foreign_key :artist, :id => :artist_id  # FK artist_id -> artist.id
      
      t.timestamps :null => false
    end
  end
end
