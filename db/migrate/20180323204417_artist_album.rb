class ArtistAlbum < ActiveRecord::Migration
  def self.up
    lines = Array[
      'DROP TABLE IF EXISTS ARTIST_ALBUM;',
      
      'CREATE TABLE `ARTIST_ALBUM` (
        `ARTIST_ID` INTEGER NOT NULL, -- FK => ARTIST.ARTIST_ID
        `ALBUM_ID`  INTEGER NOT NULL, -- FK => ALBUM.ALBUM_ID
        FOREIGN KEY (`ARTIST_ID`) REFERENCES `ARTIST` (`ARTIST_ID`),
        FOREIGN KEY (`ALBUM_ID`) REFERENCES `ALBUM` (`ALBUM_ID`),
        PRIMARY KEY (`ARTIST_ID`, `ALBUM_ID`)
      );',
    ]
    lines.each { |x| execute x }
  end
  
  def self.down
    drop_table :artist_album
  end
end
