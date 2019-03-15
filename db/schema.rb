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

ActiveRecord::Schema.define(version: 2019_03_15_023311) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authentications", force: :cascade do |t|
    t.string "uid"
    t.string "token"
    t.string "provider"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_authentications_on_user_id"
  end

  create_table "engages", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "lead_id"
    t.index ["lead_id"], name: "index_engages_on_lead_id"
    t.index ["user_id"], name: "index_engages_on_user_id"
  end

  create_table "leads", force: :cascade do |t|
    t.string "company"
    t.string "industry"
    t.string "industry_desc"
    t.integer "status"
    t.string "g_email_1"
    t.string "g_email_2"
    t.string "g_phone_1"
    t.string "g_phone_2"
    t.string "gkeeper_name"
    t.string "dm_name"
    t.string "dm_phone"
    t.string "dm_email"
    t.integer "creator_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_leads_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "role"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

  add_foreign_key "authentications", "users"
  add_foreign_key "engages", "leads"
  add_foreign_key "engages", "users"
  add_foreign_key "leads", "users"
end
