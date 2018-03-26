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

ActiveRecord::Schema.define(version: 20180326112023) do

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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "user_type", default: false
    t.boolean "admin", default: false
    t.string "constituency"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vacencies", force: :cascade do |t|
    t.string "constituency"
    t.integer "constituency_id"
    t.integer "number", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
