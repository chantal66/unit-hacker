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

ActiveRecord::Schema.define(version: 20180502184108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartments", force: :cascade do |t|
    t.integer "unit_number"
    t.integer "beds"
    t.integer "baths"
    t.string "unit_location"
    t.boolean "garage"
    t.integer "garage_number"
    t.string "renovation_type"
    t.string "floor_plan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "property_id"
    t.integer "status", default: 0
    t.datetime "ntv"
    t.datetime "measure_date"
    t.datetime "moveout_date"
    t.datetime "construction_start_date"
    t.datetime "turnover_date"
    t.index ["property_id"], name: "index_apartments_on_property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "address"
    t.integer "number_of_units"
    t.string "property_manager_name"
    t.integer "property_manager_phone"
    t.string "property_manager_email"
    t.string "state"
    t.integer "zipcode"
    t.string "specs"
    t.string "secondary_spec"
    t.string "maintenance_manager_name"
    t.integer "maintenance_manager_phone"
    t.string "maintenance_manager_email"
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "first_name"
    t.string "last_name"
    t.text "avatar"
    t.string "username"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "apartments", "properties"
  add_foreign_key "properties", "users"
end
