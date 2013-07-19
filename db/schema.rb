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

ActiveRecord::Schema.define(:version => 20130719195704) do

  create_table "brews", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.float    "abv"
    t.float    "glass"
    t.float    "quart"
    t.float    "growler"
    t.string   "type"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fonts", :force => true do |t|
    t.string   "text_color"
    t.string   "font"
    t.string   "style"
    t.boolean  "custom"
    t.float    "list_size"
    t.float    "details_size"
    t.integer  "compnay_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "name"
  end

  create_table "privileges", :force => true do |t|
    t.string   "privilege"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pubs", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "title"
    t.integer  "title_font_id"
    t.string   "subtitle"
    t.integer  "subtitle_font_id"
    t.integer  "subheader_font_id"
    t.integer  "description_font_id"
    t.integer  "taplist_font_id"
    t.integer  "featured_font_id"
    t.integer  "brew_name_font_id"
    t.integer  "featured_brew_name_font_id"
    t.string   "header_background_color"
    t.string   "subheader_background_color"
    t.string   "tabplist_background_color"
    t.string   "logo"
  end

  create_table "pubs_brews", :force => true do |t|
    t.integer "pub_id"
    t.integer "brew_id"
    t.boolean "featured"
  end

  create_table "roles", :force => true do |t|
    t.string   "role"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles_privileges", :force => true do |t|
    t.integer "role_id"
    t.integer "privilege_id"
  end

end
