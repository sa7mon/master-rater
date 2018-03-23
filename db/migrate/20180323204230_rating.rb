class Rating < ActiveRecord::Migration
  def self.up
    lines = Array[
      'DROP TABLE IF EXISTS RATING;',
      
      'CREATE TABLE `RATING` (
        `RATING_ID` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        `USER_ID` INTEGER,   -- FK => USER.USER_ID
        `ALBUM_ID` INTEGER,  -- FK => ALBUM.ALBUM_ID
        `RATING` INTEGER,
        FOREIGN KEY (`ALBUM_ID`) REFERENCES `ALBUM`(`ALBUM_ID`),
        FOREIGN KEY (`USER_ID`) REFERENCES `USER`(`USER_ID`)
      );',
      
      'CREATE UNIQUE INDEX `rating_rating_id_uindex` ON `RATING`(`RATING_ID`);'
    ]
    lines.each { |x| execute x }
  end
  
  def self.down
    drop_table :rating
  end
end
