class Track < ActiveRecord::Migration
  def self.up
    lines = Array[
      'DROP TABLE IF EXISTS TRACK;',
      
      'CREATE TABLE `TRACK` (
        `TRACK_ID` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        `TRACK_NAME` VARCHAR,
        `ALBUM_ID` INTEGER,   -- FK => ALBUM.ALBUM_ID
        `DURATION` VARCHAR,
        `ALBUM_ORDER` INTEGER,
        FOREIGN KEY (`ALBUM_ID`) REFERENCES `ALBUM`(`ALBUM_ID`)
      );',
      
      'CREATE UNIQUE INDEX `track_track_id_uindex` ON `TRACK` (`TRACK_ID`);'
    ]
    lines.each { |x| execute x }
  end
  
  def self.down
    drop_table :track
  end
end
