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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140228180643) do

  create_table "attendances", force: true do |t|
    t.integer  "student_id"
    t.date     "attended_on"
    t.datetime "now"
    t.integer  "seat"
=======
ActiveRecord::Schema.define(version: 20140215195256) do

  create_table "attendances", force: true do |t|
    t.integer  "seat"
    t.boolean  "attendance"
    t.date     "attended_on"
    t.datetime "now"
>>>>>>> 5f65be8be2389aa9f73c42687bf21df2173839c4
  end

  create_table "comments", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
<<<<<<< HEAD
    t.string   "name"
    t.string   "nickname"
    t.string   "email"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
=======
    t.string "name"
    t.string "nickname"
    t.string "email"
    t.string "image_url"
    t.string "password_digest"
>>>>>>> 5f65be8be2389aa9f73c42687bf21df2173839c4
  end

end
