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

ActiveRecord::Schema.define(version: 2018_11_18_144004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "home_phone"
    t.string "cell_phone"
    t.string "street_number"
    t.string "street_name"
    t.string "unit"
    t.string "city"
    t.string "state"
    t.string "zip"
  end

  create_table "invoices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.text "notes"
    t.integer "subtotal"
    t.integer "tax"
    t.integer "total"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "room"
    t.text "info"
    t.string "price_per_sqft"
    t.integer "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "size"
    t.string "line_total"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin"
  end

end
