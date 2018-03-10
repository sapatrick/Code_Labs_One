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

ActiveRecord::Schema.define(version: 20180310204212) do

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "cfirstname"
    t.string "clastname"
    t.string "cemailaddress"
    t.string "caddress_line_one"
    t.string "caddress_line_two"
    t.string "caddress_line_three"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email_address"
    t.string "address_line_one"
    t.string "address_line_two"
    t.string "address_line_three"
    t.string "hire_date"
    t.boolean "active"
    t.string "employee_image_file"
    t.string "sales_team"
    t.integer "sales_to_date"
    t.integer "sales_last_thirty_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.string "date_completed"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_sales_on_customer_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "date"
    t.integer "employee_id"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_transactions_on_customer_id"
    t.index ["employee_id"], name: "index_transactions_on_employee_id"
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
