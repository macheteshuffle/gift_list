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

ActiveRecord::Schema.define(version: 20140329013141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gifts", force: true do |t|
    t.string   "name",         null: false
    t.string   "location"
    t.string   "url"
    t.float    "cost"
    t.integer  "qty"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "recipient_id", null: false
  end

  create_table "recipients", force: true do |t|
    t.string   "first_name",                  null: false
    t.string   "last_name",                   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "relationship_id", default: 0, null: false
  end

  create_table "relationships", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
