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

ActiveRecord::Schema.define(version: 20160707091509) do

  create_table "account_histories", force: :cascade do |t|
    t.integer  "bank_id"
    t.string   "credit_rating"
    t.string   "integer"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "account_histories", ["bank_id"], name: "index_account_histories_on_bank_id"

  create_table "accounts", force: :cascade do |t|
    t.integer  "supplier_id"
    t.integer  "account_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["supplier_id"], name: "index_accounts_on_supplier_id"

  create_table "appoinments", force: :cascade do |t|
    t.integer  "physician_id"
    t.integer  "patient_id"
    t.string   "appoinment_time"
    t.string   "datetime"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "appoinments", ["patient_id"], name: "index_appoinments_on_patient_id"
  add_index "appoinments", ["physician_id"], name: "index_appoinments_on_physician_id"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assemblies", force: :cascade do |t|
    t.string   "name"
    t.string   "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assemblies_parts", id: false, force: :cascade do |t|
    t.integer "assembly_id"
    t.integer "part_id"
  end

  add_index "assemblies_parts", ["assembly_id"], name: "index_assemblies_parts_on_assembly_id"
  add_index "assemblies_parts", ["part_id"], name: "index_assemblies_parts_on_part_id"

  create_table "banks", force: :cascade do |t|
    t.integer  "customer_id"
    t.string   "account_number"
    t.string   "integer"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "banks", ["customer_id"], name: "index_banks_on_customer_id"

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id"

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string   "part_number"
    t.string   "string"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string   "name"
    t.string   "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
