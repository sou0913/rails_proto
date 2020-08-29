# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_29_045021) do

  create_table "employees", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.integer "service_years"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.string "word"
    t.integer "problem_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["problem_id"], name: "index_matches_on_problem_id"
  end

  create_table "no_matches", force: :cascade do |t|
    t.string "word"
    t.integer "problem_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["problem_id"], name: "index_no_matches_on_problem_id"
  end

  create_table "problems", force: :cascade do |t|
    t.string "title"
    t.text "target"
    t.text "statement"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "senario"
    t.text "after_replace_answer"
    t.string "type"
  end

  add_foreign_key "matches", "problems"
  add_foreign_key "no_matches", "problems"
end
