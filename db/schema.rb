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

ActiveRecord::Schema.define(version: 20170613021111) do

  create_table "equipment_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "station_equipment_ships", force: :cascade do |t|
    t.integer  "station_id"
    t.integer  "equipment_category_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transformers", force: :cascade do |t|
    t.integer  "equipment_category_id"
    t.integer  "factory_id"
    t.string   "standard"
    t.string   "running_number"
    t.string   "rated_voltage"
    t.string   "rated_current"
    t.string   "rated_volume"
    t.string   "phase"
    t.string   "connection_group"
    t.string   "cooling_method"
    t.string   "noload_current"
    t.string   "noload_loss"
    t.string   "short_circuit_loss"
    t.string   "impedance_voltage"
    t.string   "insulation_oil"
    t.string   "oil_weight"
    t.string   "suttle"
    t.string   "affix_weight"
    t.string   "total_weight"
    t.string   "status"
    t.date     "manufacture_date"
    t.string   "manufacture_number"
    t.date     "installation_date"
    t.date     "commissioning_date"
    t.string   "remark"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
