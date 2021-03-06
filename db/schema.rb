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

ActiveRecord::Schema.define(version: 2021_10_03_093238) do

  create_table "settlement_inputs", charset: "utf8mb4", force: :cascade do |t|
    t.string "paid_by"
    t.string "description"
    t.float "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "settlements", charset: "utf8mb4", force: :cascade do |t|
    t.string "user_name"
    t.float "amount"
    t.string "owes_to"
    t.boolean "is_paid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "settlement_input_id", null: false
    t.integer "split_ratio"
    t.index ["settlement_input_id"], name: "index_settlements_on_settlement_input_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "user_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "settlements", "settlement_inputs"
end
