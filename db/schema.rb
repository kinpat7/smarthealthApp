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

ActiveRecord::Schema.define(version: 20180419185050) do

  create_table "checkups", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "clinic_id"
    t.integer "doctor_id"
    t.date "date"
    t.time "time"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_checkups_on_clinic_id"
    t.index ["doctor_id"], name: "index_checkups_on_doctor_id"
    t.index ["patient_id"], name: "index_checkups_on_patient_id"
  end

  create_table "clinics", force: :cascade do |t|
    t.string "clinic_name"
    t.string "clinic_address"
    t.integer "clinic_phone"
    t.string "clinic_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "doctor_name"
    t.string "specialality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors_patients", id: false, force: :cascade do |t|
    t.integer "patient_id", null: false
    t.integer "doctor_id", null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "hospital_name"
    t.string "hospital_address"
    t.integer "hospital_phone"
    t.string "hospital_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "patient_name"
    t.date "dob"
    t.string "address"
    t.integer "phone_no"
    t.string "special_observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "hospital_id"
    t.integer "doctor_id"
    t.string "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_requests_on_doctor_id"
    t.index ["hospital_id"], name: "index_requests_on_hospital_id"
    t.index ["patient_id"], name: "index_requests_on_patient_id"
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
