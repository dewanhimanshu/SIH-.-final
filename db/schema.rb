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

ActiveRecord::Schema.define(version: 20180331051324) do

  create_table "answers", force: :cascade do |t|
    t.text "content"
    t.integer "question_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "applies", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "father_husband_name"
    t.string "aadhaar"
    t.date "date_of_birth"
    t.string "address"
    t.string "constituency"
    t.string "mobile"
    t.string "gender"
    t.string "family_income"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.boolean "applied", default: false
    t.string "status", default: "applied"
    t.string "feedback"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean "medical"
    t.integer "points"
    t.string "incomecertificate_file_name"
    t.string "incomecertificate_content_type"
    t.integer "incomecertificate_file_size"
    t.datetime "incomecertificate_updated_at"
    t.string "aadharcard_file_name"
    t.string "aadharcard_content_type"
    t.integer "aadharcard_file_size"
    t.datetime "aadharcard_updated_at"
    t.string "incomecerti_file_name"
    t.string "incomecerti_content_type"
    t.integer "incomecerti_file_size"
    t.datetime "incomecerti_updated_at"
    t.string "aadhaarcard_file_name"
    t.string "aadhaarcard_content_type"
    t.integer "aadhaarcard_file_size"
    t.datetime "aadhaarcard_updated_at"
    t.string "medcerti_file_name"
    t.string "medcerti_content_type"
    t.integer "medcerti_file_size"
    t.datetime "medcerti_updated_at"
  end

  create_table "circulars", force: :cascade do |t|
    t.string "by"
    t.text "content", default: ""
    t.string "title"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "document_file_name"
    t.string "document_content_type"
    t.integer "document_file_size"
    t.datetime "document_updated_at"
  end

  create_table "constituencies", force: :cascade do |t|
    t.string "name"
    t.integer "pin_code"
    t.integer "male_applicants", default: 0
    t.integer "female_applicants", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number", default: 0
  end

  create_table "notices", force: :cascade do |t|
    t.string "by"
    t.text "content"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "constituency", default: "For all"
  end

  create_table "questions", force: :cascade do |t|
    t.string "content"
    t.integer "hits", default: 0
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "user_type", default: false
    t.boolean "admin", default: false
    t.string "constituency"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "sign_file_name"
    t.string "sign_content_type"
    t.integer "sign_file_size"
    t.datetime "sign_updated_at"
    t.boolean "applied", default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "vacencies", force: :cascade do |t|
    t.string "constituency"
    t.integer "constituency_id"
    t.integer "number", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
