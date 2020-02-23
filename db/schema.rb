# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_23_112053) do

  create_table "buildings", force: :cascade do |t|
    t.text "image"
    t.text "description"
    t.string "location"
    t.integer "build_year"
    t.text "equiments"
    t.integer "floor_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "equipments", default: "--- []\n"
  end

  create_table "floors", force: :cascade do |t|
    t.integer "num_of_floor"
    t.integer "building_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["building_id"], name: "index_floors_on_building_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "rentail_fee"
    t.integer "manager_fee"
    t.float "size"
    t.text "image"
    t.integer "building_id", null: false
    t.integer "floor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "images", default: "--- []\n"
    t.index ["building_id"], name: "index_rooms_on_building_id"
    t.index ["floor_id"], name: "index_rooms_on_floor_id"
  end

  add_foreign_key "floors", "buildings"
  add_foreign_key "rooms", "buildings"
  add_foreign_key "rooms", "floors"
end
