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

ActiveRecord::Schema.define(version: 20160408025945) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "checkins", force: :cascade do |t|
    t.boolean  "is_checked_in"
    t.integer  "user_id"
    t.integer  "venue_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "checkins", ["user_id"], name: "index_checkins_on_user_id"
  add_index "checkins", ["venue_id"], name: "index_checkins_on_venue_id"

  create_table "performances", force: :cascade do |t|
    t.integer  "rating"
    t.text     "comment"
    t.boolean  "completed"
    t.integer  "user_id"
    t.integer  "song_id"
    t.integer  "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "performances", ["song_id"], name: "index_performances_on_song_id"
  add_index "performances", ["user_id"], name: "index_performances_on_user_id"
  add_index "performances", ["venue_id"], name: "index_performances_on_venue_id"

  create_table "requests", force: :cascade do |t|
    t.boolean  "available"
    t.integer  "user_id"
    t.integer  "song_id"
    t.integer  "venue_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "checkin_id"
    t.boolean  "has_requested"
  end

  add_index "requests", ["song_id"], name: "index_requests_on_song_id"
  add_index "requests", ["user_id"], name: "index_requests_on_user_id"
  add_index "requests", ["venue_id"], name: "index_requests_on_venue_id"

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "performance_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "rating"
    t.text     "content"
    t.string   "headline"
  end

  add_index "reviews", ["performance_id"], name: "index_reviews_on_performance_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "songs", force: :cascade do |t|
    t.string   "artist"
    t.string   "title"
    t.string   "genre"
    t.text     "lyrics"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "art"
  end

  add_index "songs", ["user_id"], name: "index_songs_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "stagename"
    t.boolean  "is_checked_in"
    t.boolean  "is_in_queue"
    t.boolean  "is_manager"
    t.boolean  "is_admin"
    t.boolean  "is_dj"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "has_performed"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
  end

end
