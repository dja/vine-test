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

ActiveRecord::Schema.define(version: 20140729190403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "videos", force: true do |t|
    t.string   "avatar_url"
    t.string   "description"
    t.string   "foursquare_venue_id"
    t.integer  "loop_count"
    t.string   "permalink_url"
    t.string   "share_url"
    t.string   "thumbnail_url"
    t.string   "video_low_url"
    t.string   "video_url"
    t.integer  "like_count"
    t.integer  "post_id",             limit: 8
    t.integer  "comments_count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "creation"
    t.string   "tag"
  end

end
