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

ActiveRecord::Schema.define(version: 20190416181115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "codes", force: :cascade do |t|
    t.string "description"
    t.text "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "go_publish", default: false
    t.text "info"
    t.boolean "good"
    t.string "example_for"
  end

  create_table "quotes", id: :serial, force: :cascade do |t|
    t.string "saying"
    t.string "auther"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "source"
  end

  create_table "words", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "equivalent"
    t.string "sourc_language"
    t.string "target_language"
    t.string "state"
    t.string "scope"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
