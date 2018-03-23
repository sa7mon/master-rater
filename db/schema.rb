# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180323204417) do

  create_table "ALBUM", primary_key: "ALBUM_ID", force: :cascade do |t|
    t.date    "RELEASE_DATE"
    t.string  "LABEL"
    t.string  "TOTAL_TIME"
    t.integer "GENRE_ID"
  end

  add_index "ALBUM", ["ALBUM_ID"], name: "album_album_id_uindex", unique: true

  create_table "ARTIST", primary_key: "ARTIST_ID", force: :cascade do |t|
    t.string "NAME"
  end

  add_index "ARTIST", ["ARTIST_ID"], name: "artist_artist_id_uindex", unique: true

  create_table "ARTIST_ALBUM", id: false, force: :cascade do |t|
    t.integer "ARTIST_ID", null: false
    t.integer "ALBUM_ID",  null: false
  end

  add_index "ARTIST_ALBUM", ["ARTIST_ID", "ALBUM_ID"], name: "sqlite_autoindex_ARTIST_ALBUM_1", unique: true

  create_table "GENRE", primary_key: "GENRE_ID", force: :cascade do |t|
    t.string "GENRE_NAME"
  end

  add_index "GENRE", ["GENRE_ID"], name: "genre_genre_id_uindex", unique: true

  create_table "RATING", primary_key: "RATING_ID", force: :cascade do |t|
    t.integer "USER_ID"
    t.integer "ALBUM_ID"
    t.integer "RATING"
  end

  add_index "RATING", ["RATING_ID"], name: "rating_rating_id_uindex", unique: true

  create_table "TRACK", primary_key: "TRACK_ID", force: :cascade do |t|
    t.string  "TRACK_NAME"
    t.integer "ALBUM_ID"
    t.string  "DURATION"
    t.integer "ALBUM_ORDER"
  end

  add_index "TRACK", ["TRACK_ID"], name: "track_track_id_uindex", unique: true

  create_table "USER", primary_key: "USER_ID", force: :cascade do |t|
    t.string "USER_NAME"
    t.string "PASSWORD_HASH"
    t.text   "BIOGRAPHY"
  end

  add_index "USER", ["USER_ID"], name: "user_user_id_uindex", unique: true

end
