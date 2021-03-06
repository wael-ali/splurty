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

ActiveRecord::Schema.define(version: 20190417165929) do

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

  create_table "infos", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listitems", force: :cascade do |t|
    t.bigint "subinfo_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subinfo_id"], name: "index_listitems_on_subinfo_id"
  end

  create_table "quotes", id: :serial, force: :cascade do |t|
    t.string "saying"
    t.string "auther"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "source"
  end

  create_table "subinfos", force: :cascade do |t|
    t.bigint "info_id"
    t.string "title"
    t.text "text"
    t.string "imgurl"
    t.string "img_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["info_id"], name: "index_subinfos_on_info_id"
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

  add_foreign_key "listitems", "subinfos"
  add_foreign_key "subinfos", "infos"
end
