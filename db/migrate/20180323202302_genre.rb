class Genre < ActiveRecord::Migration
  def self.up
    lines = Array[
      'DROP TABLE IF EXISTS GENRE;',
      'CREATE TABLE `GENRE` (
        `GENRE_ID` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        `GENRE_NAME` VARCHAR
      );',
      'CREATE UNIQUE INDEX `genre_genre_id_uindex` ON `GENRE` (`GENRE_ID`);'
    ]
    lines.each { |x| execute x }
  end
  
  def self.down
    drop_table :genre
  end
end
