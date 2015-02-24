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

ActiveRecord::Schema.define(version: 20150217201317) do

  create_table "correspondences", force: :cascade do |t|
    t.string   "subject"
    t.text     "triggers",       default: "--- []\n"
    t.text     "format",         default: "--- []\n"
    t.string   "office"
    t.text     "sample_message"
    t.text     "audience",       default: "--- []\n"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.text     "comments"
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "audience",                   default: "--- []\n"
    t.text     "eligibility_criteria"
    t.text     "determine_eligibility"
    t.boolean  "phone",                      default: false
    t.string   "phone_number"
    t.integer  "call_volume"
    t.boolean  "online",                     default: false
    t.string   "url"
    t.integer  "digital_volume"
    t.boolean  "in_person_ro",               default: false
    t.boolean  "in_person_mc",               default: false
    t.boolean  "by_mail",                    default: false
    t.integer  "mail_volume"
    t.string   "form"
    t.string   "details_url"
    t.string   "office"
    t.string   "resolution_time"
    t.string   "resolution_time_95th"
    t.string   "resolution_rate"
    t.string   "first_time_resolution_rate"
    t.integer  "request_volume"
    t.text     "keywords"
    t.integer  "search_on_va"
    t.integer  "search_on_google"
    t.integer  "man_hours"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

end
