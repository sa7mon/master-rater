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

ActiveRecord::Schema.define(version: 20180404022206) do

  create_table "albumraters", force: :cascade do |t|
    t.string   "name"
    t.string   "provider"
    t.string   "uid",         null: false
    t.string   "nickname"
    t.string   "description"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "albums", force: :cascade do |t|
    t.date     "release_date"
    t.string   "label"
    t.string   "name",           null: false
    t.string   "total_time"
    t.integer  "genre_id",       null: false
    t.integer  "artist_id",      null: false
    t.string   "musicbrainz_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.text     "biography"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "rating",        null: false
    t.integer  "albumrater_id", null: false
    t.integer  "album_id",      null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string   "name",        null: false
    t.integer  "album_id",    null: false
    t.string   "duration"
    t.integer  "album_order", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",      null: false
    t.string   "password_hash", null: false
    t.text     "biography"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
