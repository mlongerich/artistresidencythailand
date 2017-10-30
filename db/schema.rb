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

ActiveRecord::Schema.define(version: 20171030052719) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "petitions", force: :cascade do |t|
    t.string "name", null: false
    t.date "dob"
    t.string "gender"
    t.string "residency_type", null: false
    t.text "address"
    t.string "email", null: false
    t.string "phone"
    t.text "social_media"
    t.text "practice_medium"
    t.text "artistic_statement"
    t.text "history"
    t.text "offering"
    t.text "references"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "start_date"
    t.string "duration"
    t.text "intention"
  end

end
