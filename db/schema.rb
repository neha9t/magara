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

ActiveRecord::Schema.define(version: 2018_08_16_053912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "address_1", null: false
    t.string "address_2"
    t.string "city", null: false
    t.string "state", null: false
    t.string "zip_code", null: false
    t.integer "house_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checkboxes", force: :cascade do |t|
    t.boolean "air_conditioning"
    t.boolean "balcony"
    t.boolean "furnished"
    t.boolean "include_utility"
    t.boolean "pets_allowed"
    t.boolean "private_bathroom"
    t.boolean "private_bedroom"
    t.boolean "refrigerator"
    t.boolean "near_bus_line"
    t.boolean "smoke_allowed"
    t.integer "house_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.money "rent", scale: 2, null: false
    t.money "deposit", scale: 2
    t.text "description"
    t.integer "preferred_gender", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
