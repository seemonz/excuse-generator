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

ActiveRecord::Schema.define(version: 20151023133402) do

  create_table "beginnings", force: :cascade do |t|
    t.string   "phrase"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "excuses", force: :cascade do |t|
    t.integer  "beginnings_id"
    t.integer  "middles_id"
    t.integer  "finals_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "upvote_count"
  end

  add_index "excuses", ["beginnings_id", "middles_id", "finals_id"], name: "index_excuses_on_beginnings_id_and_middles_id_and_finals_id", unique: true

  create_table "finals", force: :cascade do |t|
    t.string   "phrase"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "middles", force: :cascade do |t|
    t.string   "phrase"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
