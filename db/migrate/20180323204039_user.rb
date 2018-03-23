class User < ActiveRecord::Migration
  def self.up
    lines = Array[
      'DROP TABLE IF EXISTS USER;',

      'CREATE TABLE `USER` (
        `USER_ID` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        `USER_NAME` VARCHAR,
        `PASSWORD_HASH` VARCHAR,
        `BIOGRAPHY` TEXT
      );',
      
      'CREATE UNIQUE INDEX `user_user_id_uindex` ON `USER`(`USER_ID`);'
    ]
    lines.each { |x| execute x }
  end
  
  def self.down
    drop_table :user
  end
end
