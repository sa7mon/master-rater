class Album < ActiveRecord::Migration
  def self.up
    lines = Array[
      'DROP TABLE IF EXISTS ALBUM;',
      'CREATE TABLE `ALBUM` (
        `ALBUM_ID` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        `RELEASE_DATE` DATE,
        `LABEL` VARCHAR,
        `TOTAL_TIME` VARCHAR,
        `GENRE_ID` INT,       -- FK => GENRE.GENRE_ID
        FOREIGN KEY (`GENRE_ID`) REFERENCES `GENRE`(`GENRE_ID`)
      );',
      'CREATE UNIQUE INDEX `album_album_id_uindex` ON `ALBUM` (`ALBUM_ID`);'
    ]
    lines.each { |x| execute x }
  end
  def self.down
    drop_table :album
  end
end
