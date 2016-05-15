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

ActiveRecord::Schema.define(version: 20160514192938) do

  create_table "ch2s", force: :cascade do |t|
    t.string   "post"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mocks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nevers", force: :cascade do |t|
    t.string   "post"
    t.string   "url"
    t.string   "src"
    t.integer  "fav"
    t.integer  "view"
    t.integer  "pos_x"
    t.integer  "pos_y"
    t.integer  "pos_z"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.text     "post"
    t.string   "user"
    t.string   "screen_name"
    t.string   "icon"
    t.integer  "fav"
    t.integer  "rt"
    t.integer  "pos_x"
    t.integer  "pos_y"
    t.integer  "pos_z"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "twitters", force: :cascade do |t|
    t.date "date"
  end

end
