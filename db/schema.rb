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

ActiveRecord::Schema.define(version: 20180208194524) do

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "account_number"
    t.string "code"
    t.boolean "active"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "phone_number"
    t.string "fax_number"
    t.string "website"
    t.string "contact_1"
    t.string "contact_1_title"
    t.integer "contact_1_phone"
    t.string "contact_1_email"
    t.string "contact_2"
    t.string "contact_2_title"
    t.integer "contact_2_phone"
    t.string "contact_2_email"
    t.string "contact_3"
    t.string "contact_3_title"
    t.integer "contact_3_phone"
    t.string "contact_3_email"
    t.string "accounts_payable_address_1"
    t.string "accounts_payable_address_2"
    t.string "accounts_payable_city"
    t.string "accounts_payable_attn"
    t.string "accounts_payable_contact_1"
    t.integer "accounts_payable_contact_1_phone"
    t.integer "accounts_payable_contact_1_fax"
    t.string "accounts_payable_contact_1_email"
    t.string "accounts_payable_contact_2"
    t.integer "accounts_payable_contact_2_phone"
    t.string "accounts_payable_contact_email"
    t.boolean "contracted_services_basic"
    t.boolean "contracted_services_strip"
    t.boolean "contracted_services_backstrip"
    t.boolean "contracted_services_extraction"
    t.boolean "contracted_services_scrub"
    t.boolean "contracted_services_buff"
    t.boolean "contracted_services_windows"
    t.boolean "contracted_services_grandopening"
    t.boolean "contracted_services_halfstrip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "employee_number"
    t.integer "route_number"
    t.integer "subcenter_number"
    t.string "address"
    t.string "city"
    t.integer "phone_number"
    t.string "email_address"
    t.string "ups"
    t.string "division"
    t.string "hire_date"
    t.string "last_day"
    t.integer "ssn"
    t.string "license_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subcontractor_id"
    t.string "phone"
    t.index ["subcontractor_id"], name: "index_employees_on_subcontractor_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subcontractor"
    t.string "division"
  end

  create_table "service_comments", force: :cascade do |t|
    t.string "store"
    t.string "date"
    t.string "contacted_manager"
    t.string "store_manager"
    t.text "body"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_service_comments_on_account_id"
  end

  create_table "service_records", force: :cascade do |t|
    t.string "store"
    t.string "date"
    t.string "manager"
    t.string "service_type"
    t.boolean "report_in"
    t.text "body"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subcontractor"
    t.index ["account_id"], name: "index_service_records_on_account_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "chain"
    t.string "store"
    t.string "code"
    t.string "address"
    t.string "city"
    t.integer "phone"
    t.string "manager"
    t.string "manager_phone"
    t.string "manager_email"
    t.string "assistant_1"
    t.string "assistant_2"
    t.string "region"
    t.string "district"
    t.boolean "active"
    t.string "time"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "service_records_id"
    t.string "name"
    t.string "phone_number"
    t.index ["account_id"], name: "index_stores_on_account_id"
    t.index ["service_records_id"], name: "index_stores_on_service_records_id"
  end

  create_table "subcontractors", force: :cascade do |t|
    t.string "name"
    t.string "subcontractor_number"
    t.string "owner"
    t.string "address_1"
    t.string "address_2"
    t.string "city_state_zip"
    t.integer "phone_1"
    t.integer "phone_2"
    t.string "email_address"
    t.string "division"
    t.string "route"
    t.boolean "active"
    t.string "business_license"
    t.string "federal_number"
    t.string "sca_rec"
    t.string "sca_exp"
    t.string "lwa_rec"
    t.string "Nsqc_rec"
    t.string "psqc"
    t.string "bookkeeper"
    t.string "lettstat"
    t.string "chk_acct"
    t.string "liability_carrier"
    t.string "liability_expiration"
    t.string "wcmp_car"
    t.string "wcmp_exp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
