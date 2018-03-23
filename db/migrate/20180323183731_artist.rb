class Artist < ActiveRecord::Migration
  def self.up
    lines = Array[
      'DROP TABLE IF EXISTS `ARTIST`;',
      'CREATE TABLE `ARTIST` (
        `ARTIST_ID` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        `NAME` VARCHAR
      );',
      'CREATE UNIQUE INDEX `artist_artist_id_uindex` ON `ARTIST` (`ARTIST_ID`);']
      
    lines.each { |x| execute x }
  end
  
  def self.down
    drop_table :artist
  end
end
