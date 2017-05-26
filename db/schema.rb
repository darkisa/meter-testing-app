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

ActiveRecord::Schema.define(version: 20170525003047) do

  create_table "protocols", force: :cascade do |t|
    t.float "tp1"
    t.float "tp2"
    t.float "tp3"
    t.float "tp4"
    t.float "tp5"
    t.float "tp6"
    t.float "tp7"
    t.float "tp8"
    t.float "tp9"
    t.float "tp10"
    t.float "tp11"
    t.boolean "compound"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_results", force: :cascade do |t|
    t.integer "test_id"
    t.string "test_name"
    t.date "test_date"
    t.time "start_time"
    t.time "end_time"
    t.string "operator"
    t.string "test_type"
    t.string "meter_size"
    t.string "meter_type"
    t.string "meter_brand"
    t.string "serial_no"
    t.string "account"
    t.float "tp1_rate"
    t.float "tp1_accuracy"
    t.float "tp2_rate"
    t.float "tp2_accuracy"
    t.float "tp3_rate"
    t.float "tp3_accuracy"
    t.float "tp4_rate"
    t.float "tp4_accuracy"
    t.float "tp5_rate"
    t.float "tp5_accuracy"
    t.float "tp6_rate"
    t.float "tp6_accuracy"
    t.float "tp7_rate"
    t.float "tp7_accuracy"
    t.float "tp8_rate"
    t.float "tp8_accuracy"
    t.float "tp9_rate"
    t.float "tp9_accuracy"
    t.float "tp10_rate"
    t.float "tp10accuracy"
    t.float "tp11_rate"
    t.float "tp11_accuracy"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.decimal "start_read"
    t.decimal "end_read"
    t.decimal "register_volume"
    t.decimal "reference_volume"
    t.decimal "tp1_start_read"
    t.decimal "tp1_end_read"
    t.decimal "tp1_register_volume"
    t.decimal "tp1_reference_volume"
    t.decimal "tp2_start_read"
    t.decimal "tp2_end_read"
    t.decimal "tp2_register_volume"
    t.decimal "tp2_reference_volume"
    t.decimal "tp3_start_read"
    t.decimal "tp3_end_read"
    t.decimal "tp3_register_volume"
    t.decimal "tp3_reference_volume"
    t.decimal "tp4_start_read"
    t.decimal "tp4_end_read"
    t.decimal "tp4_register_volume"
    t.decimal "tp4_reference_volume"
    t.decimal "tp5_start_read"
    t.decimal "tp5_end_read"
    t.decimal "tp5_register_volume"
    t.decimal "tp5_reference_volume"
    t.decimal "tp6_start_read"
    t.decimal "tp6_end_read"
    t.decimal "tp6_register_volume"
    t.decimal "tp6_reference_volume"
    t.decimal "tp7_start_read"
    t.decimal "tp7_end_read"
    t.decimal "tp7_register_volume"
    t.decimal "tp7_reference_volume"
    t.decimal "tp8_start_read"
    t.decimal "tp8_end_read"
    t.decimal "tp8_register_volume"
    t.decimal "tp8_reference_volume"
    t.decimal "tp9_start_read"
    t.decimal "tp9_end_read"
    t.decimal "tp9_register_volume"
    t.decimal "tp9_reference_volume"
    t.decimal "tp10_start_read"
    t.decimal "tp10_end_read"
    t.decimal "tp10_register_volume"
    t.decimal "tp10_reference_volume"
    t.decimal "tp11_start_read"
    t.decimal "tp11_end_read"
    t.decimal "tp11_register_volume"
    t.decimal "tp11_reference_volume"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email", default: "", null: false
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
