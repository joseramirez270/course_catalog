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

ActiveRecord::Schema.define(version: 20170315162300) do

  create_table "courses", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.text     "description"
    t.float    "credits"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "courses_instructors", id: false, force: :cascade do |t|
    t.integer "course_id",     null: false
    t.integer "instructor_id", null: false
    t.index ["course_id", "instructor_id"], name: "index_courses_instructors_on_course_id_and_instructor_id"
    t.index ["instructor_id", "course_id"], name: "index_courses_instructors_on_instructor_id_and_course_id"
  end

  create_table "courses_subjects", id: false, force: :cascade do |t|
    t.integer "subject_id", null: false
    t.integer "course_id",  null: false
    t.index ["course_id", "subject_id"], name: "index_courses_subjects_on_course_id_and_subject_id"
    t.index ["subject_id", "course_id"], name: "index_courses_subjects_on_subject_id_and_course_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "last"
    t.string   "first"
    t.string   "middle"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "abbrev"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
