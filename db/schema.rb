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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111014213232) do

  create_table "attachments", :force => true do |t|
    t.integer  "post_id"
    t.string   "title"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_path"
    t.string   "file_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "public_url"
  end

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "post_id"
    t.integer  "user_id"
    t.integer  "comment_id"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "posts_tags", :id => false, :force => true do |t|
    t.integer "post_id"
    t.integer "tag_id"
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "image_file"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

end
