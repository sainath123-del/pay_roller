# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_11_060452) do

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "pay_rate"
    t.string "job_title"
    t.string "dob"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "salaries", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "gross_salary"
    t.integer "net_salary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_salaries_on_employee_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_shifts_on_employee_id"
  end

  add_foreign_key "salaries", "employees"
  add_foreign_key "shifts", "employees"
end
