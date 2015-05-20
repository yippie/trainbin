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

ActiveRecord::Schema.define(version: 20140608175304) do

  create_table "cars", force: true do |t|
    t.string   "modelnumber"
    t.string   "notes"
    t.string   "scale"
    t.string   "cartype"
    t.integer  "quantity"
    t.integer  "User_id"
    t.integer  "Manufacturer_id"
    t.integer  "Railroad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "cars", ["Manufacturer_id"], name: "index_cars_on_Manufacturer_id"
  add_index "cars", ["Railroad_id"], name: "index_cars_on_Railroad_id"
  add_index "cars", ["User_id"], name: "index_cars_on_User_id"

  create_table "engines", force: true do |t|
    t.string   "modelnumber"
    t.string   "notes"
    t.string   "scale"
    t.string   "enginetype"
    t.string   "roadnumber"
    t.boolean  "own"
    t.integer  "User_id"
    t.integer  "Manufacturer_id"
    t.integer  "Prototype_id"
    t.integer  "Railroad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "engines", ["Manufacturer_id"], name: "index_engines_on_Manufacturer_id"
  add_index "engines", ["Prototype_id"], name: "index_engines_on_Prototype_id"
  add_index "engines", ["Railroad_id"], name: "index_engines_on_Railroad_id"
  add_index "engines", ["User_id"], name: "index_engines_on_User_id"

  create_table "manufacturers", force: true do |t|
    t.string   "name"
    t.boolean  "control"
    t.boolean  "track"
    t.boolean  "trains"
    t.integer  "User_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "manufacturers", ["User_id"], name: "index_manufacturers_on_User_id"

  create_table "prototypes", force: true do |t|
    t.string   "name"
    t.string   "notes"
    t.string   "enginetype"
    t.string   "manufacturer"
    t.string   "model"
    t.integer  "User_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prototypes", ["User_id"], name: "index_prototypes_on_User_id"

  create_table "railroads", force: true do |t|
    t.string   "name"
    t.string   "notes"
    t.integer  "User_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "railroads", ["User_id"], name: "index_railroads_on_User_id"

  create_table "tracks", force: true do |t|
    t.string   "partnumber"
    t.string   "notes"
    t.string   "scale"
    t.string   "tracktype"
    t.integer  "quantity"
    t.integer  "User_id"
    t.integer  "Manufacturer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "tracks", ["Manufacturer_id"], name: "index_tracks_on_Manufacturer_id"
  add_index "tracks", ["User_id"], name: "index_tracks_on_User_id"

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
