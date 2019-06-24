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

ActiveRecord::Schema.define(version: 2019_06_24_150805) do

  create_table "benutzers", force: :cascade do |t|
    t.string "mail"
    t.string "name"
    t.string "passwort"
    t.boolean "tutor"
    t.boolean "qualTut"
    t.boolean "ansprechpartner"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fachmoduls", force: :cascade do |t|
    t.string "titel"
    t.text "beschreibung"
    t.integer "benutzer_id"
    t.integer "wissensgebiet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["benutzer_id"], name: "index_fachmoduls_on_benutzer_id"
    t.index ["wissensgebiet_id"], name: "index_fachmoduls_on_wissensgebiet_id"
  end

  create_table "inhalts", force: :cascade do |t|
    t.string "titel"
    t.text "inhalt"
    t.boolean "gemeldet"
    t.integer "fachmodul_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fachmodul_id"], name: "index_inhalts_on_fachmodul_id"
  end

  create_table "lernmethodens", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wissensgebiets", force: :cascade do |t|
    t.string "titel"
    t.text "beschreibung"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
