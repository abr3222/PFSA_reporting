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

ActiveRecord::Schema.define(version: 20151220113143) do

  create_table "all_evidence_details", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "all_evidence_type_possible_details", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "all_evidence_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "case_departments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "city_name",  limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "department_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "department_name", limit: 60, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "detail_evidences", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evidence_suspects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evidence_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evidence_victims", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evidences", force: :cascade do |t|
    t.string   "evidence_name",      limit: 255
    t.string   "evidence_type",      limit: 255
    t.integer  "evidence_quantitiy", limit: 4
    t.string   "evidence_condition", limit: 255
    t.string   "evidence_details",   limit: 255
    t.string   "road_letter",        limit: 255
    t.datetime "Submitted_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "list_required_tests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media_assets", force: :cascade do |t|
    t.string   "asset_image", limit: 255
    t.string   "asset_video", limit: 255
    t.string   "asset_audio", limit: 255
    t.string   "asset",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "permission_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.string   "add",        limit: 255
    t.string   "delete",     limit: 255
    t.string   "update",     limit: 255
    t.string   "view",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pfsa_cases", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "police_stations", force: :cascade do |t|
    t.string   "station_name", limit: 255
    t.string   "station_code", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string   "provider_cnic",    limit: 50, null: false
    t.string   "provider_name",    limit: 50, null: false
    t.string   "provider_address", limit: 50
    t.string   "provider_contact", limit: 50
    t.string   "provider_beltno",  limit: 50
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "providers", ["provider_cnic"], name: "index_providers_on_provider_cnic", unique: true, using: :btree

  create_table "report_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string   "report_link",   limit: 255
    t.string   "report_status", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "role_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "super_admin", limit: 50
    t.string   "admin",       limit: 50
    t.string   "supervisor",  limit: 50
    t.string   "scientists",  limit: 50
    t.string   "technician",  limit: 50
    t.string   "eru_user",    limit: 50
    t.string   "icc_user",    limit: 50
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sub_evidences", force: :cascade do |t|
    t.string   "sub_evidence_name",   limit: 200, null: false
    t.string   "sub_evidence_detail", limit: 200
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "suspects", force: :cascade do |t|
    t.string   "suspect_cnic",    limit: 50, null: false
    t.string   "suspect_name",    limit: 50, null: false
    t.string   "suspect_address", limit: 50
    t.string   "suspect_contact", limit: 50
    t.string   "suspect_beltno",  limit: 50
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "test_requireds", force: :cascade do |t|
    t.string   "test_name",  limit: 60, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "tokens", force: :cascade do |t|
    t.string   "token_detail", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name",     limit: 100, null: false
    t.string   "user_address",  limit: 100, null: false
    t.string   "user_cnic",     limit: 30,  null: false
    t.string   "user_password", limit: 50,  null: false
    t.string   "user_email",    limit: 50
    t.string   "user_contact",  limit: 50
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "victims", force: :cascade do |t|
    t.string   "victim_cnic",    limit: 50, null: false
    t.string   "victim_name",    limit: 50, null: false
    t.string   "victim_address", limit: 50
    t.string   "victim_contact", limit: 50
    t.string   "victim_beltno",  limit: 50
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
