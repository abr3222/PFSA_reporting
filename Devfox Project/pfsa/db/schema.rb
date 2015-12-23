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

ActiveRecord::Schema.define(version: 20151223063113) do

  create_table "all_evidence_details", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "all_evidence_types", force: :cascade do |t|
    t.string   "evidence_name", limit: 50
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "all_evidencetypes_possibledetails_joins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cases_departments_joins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "city_name",       limit: 255, null: false
    t.string   "city_code",       limit: 255, null: false
    t.string   "city_short_name", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "department_name", limit: 60, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "departments_users_joins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details_evidences_joins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evidences_requireds_tests_joins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evidences_suspects_joins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evidences_users_joins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evidences_victims_joins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media_assets", force: :cascade do |t|
    t.string   "asset_image",  limit: 255
    t.string   "asset_video",  limit: 255
    t.string   "asset_audio",  limit: 255
    t.string   "asset_others", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.string   "add",        limit: 255
    t.string   "delete",     limit: 255
    t.string   "update",     limit: 255
    t.string   "view",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "permissions_users_joins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pfsa_cases", force: :cascade do |t|
    t.string   "serial_key",     limit: 255, null: false
    t.string   "pfsa_case_id",   limit: 255, null: false
    t.string   "pfsa_case_year", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "pfsa_cases", ["pfsa_case_id"], name: "index_pfsa_cases_on_pfsa_case_id", unique: true, using: :btree
  add_index "pfsa_cases", ["serial_key"], name: "index_pfsa_cases_on_serial_key", unique: true, using: :btree

  create_table "police_stations", force: :cascade do |t|
    t.string   "station_name", limit: 255
    t.string   "station_code", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string   "provider_cnic",     limit: 50,  null: false
    t.string   "provider_name",     limit: 50,  null: false
    t.string   "provider_address",  limit: 50
    t.string   "provider_contact",  limit: 50
    t.string   "provider_beltno",   limit: 50
    t.string   "provider_district", limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "providers", ["provider_cnic"], name: "index_providers_on_provider_cnic", unique: true, using: :btree

  create_table "reports", force: :cascade do |t|
    t.string   "report_link",   limit: 255
    t.string   "report_status", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "reports_users_joins", force: :cascade do |t|
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

  create_table "roles_users_joins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_evidences", force: :cascade do |t|
    t.string   "sub_evidence_id",       limit: 50,  null: false
    t.string   "sub_evidence_name",     limit: 255
    t.text     "sub_evidence_detail",   limit: 255
    t.string   "sub_evidence_pictures", limit: 255
    t.string   "sub_evidence_audio",    limit: 255
    t.string   "sub_evidence_video",    limit: 255
    t.string   "sub_evidence_others",   limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "suspects", force: :cascade do |t|
    t.string   "suspect_cnic",           limit: 50,  null: false
    t.string   "suspect_name",           limit: 50,  null: false
    t.string   "suspect_address",        limit: 50
    t.string   "suspect_contact",        limit: 50
    t.string   "suspect_district",       limit: 255
    t.string   "suspect_charges",        limit: 255
    t.text     "suspect_charges_detail", limit: 255
    t.string   "suspect_province",       limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "suspects", ["suspect_cnic"], name: "index_suspects_on_suspect_cnic", unique: true, using: :btree

  create_table "test_requireds", force: :cascade do |t|
    t.string   "test_name",  limit: 60, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "tokens", force: :cascade do |t|
    t.string   "serial_key",   limit: 255, null: false
    t.text     "token_detail", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_pfsa_id",  limit: 255, null: false
    t.string   "user_name",     limit: 100, null: false
    t.string   "user_address",  limit: 100
    t.string   "user_cnic",     limit: 30,  null: false
    t.string   "user_password", limit: 50,  null: false
    t.string   "user_email",    limit: 50
    t.string   "user_contact",  limit: 50
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "users", ["user_pfsa_id"], name: "index_users_on_user_pfsa_id", unique: true, using: :btree

  create_table "victims", force: :cascade do |t|
    t.string   "victim_cnic",      limit: 50,  null: false
    t.string   "victim_name",      limit: 50,  null: false
    t.string   "victim_address",   limit: 50
    t.string   "victim_contact",   limit: 50
    t.string   "victim_dirstrict", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
