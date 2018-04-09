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

ActiveRecord::Schema.define(version: 20180409181821) do

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

end
