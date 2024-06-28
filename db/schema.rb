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

ActiveRecord::Schema.define(version: 2024_06_28_133640) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.decimal "price", precision: 10, scale: 2, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "retail_chains", force: :cascade do |t|
    t.string "name", null: false
    t.string "headquarters", null: false
    t.string "ceo", null: false
    t.string "website", null: false
    t.string "contact_email", null: false
    t.string "contact_phone", null: false
    t.string "industry", null: false
    t.date "founded_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stock_items", force: :cascade do |t|
    t.bigint "store_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity", default: 0, null: false
    t.decimal "price", precision: 10, scale: 2, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_stock_items_on_product_id"
    t.index ["store_id"], name: "index_stock_items_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.bigint "retail_chain_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["retail_chain_id"], name: "index_stores_on_retail_chain_id"
  end

  add_foreign_key "stock_items", "products"
  add_foreign_key "stock_items", "stores"
  add_foreign_key "stores", "retail_chains"
end
