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

ActiveRecord::Schema.define(version: 20201024130956) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attending_subjects", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_attending_subjects_on_student_id", using: :btree
    t.index ["subject_id"], name: "index_attending_subjects_on_subject_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "roll_number"
    t.string   "house"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students_teachers", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "teacher_id", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "teacher_id"
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id", using: :btree
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attending_subjects", "students"
  add_foreign_key "attending_subjects", "subjects"
end
