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

ActiveRecord::Schema.define(version: 20180211050312) do

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email_address"
    t.string "address_line_one"
    t.string "address_line_two"
    t.string "address_line_three"
    t.integer "vehicle_id"
    t.text "original_agreement"
    t.integer "monthly_payment"
    t.integer "months_left"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_customers_on_vehicle_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email_address"
    t.string "address_line_one"
    t.string "address_line_two"
    t.string "address_line_three"
    t.string "hire_date"
    t.string "employee_image_file"
    t.string "sales_team"
    t.integer "sales_to_date"
    t.integer "sales_last_30_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "year"
    t.string "make"
    t.string "model"
    t.string "variety"
    t.string "condition"
    t.decimal "mileage"
    t.integer "count"
    t.decimal "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
  end

end
