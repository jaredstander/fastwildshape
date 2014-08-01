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

ActiveRecord::Schema.define(version: 20140731034406) do

  create_table "characters", force: true do |t|
    t.string   "name"
    t.string   "size"
    t.integer  "level"
    t.integer  "str"
    t.integer  "dex"
    t.integer  "con"
    t.integer  "bab"
    t.integer  "total_ac"
    t.integer  "touch_ac"
    t.integer  "flatfooted_ac"
    t.integer  "stackable_armor_ac"
    t.integer  "is_druid"
    t.string   "milestone_levels"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wild_shape_forms", force: true do |t|
    t.string   "name"
    t.string   "size"
    t.string   "creature_type"
    t.string   "creature_subtype"
    t.string   "base_speed"
    t.string   "abilities"
    t.string   "attacks"
    t.integer  "cmd_bonus_vs_trip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
