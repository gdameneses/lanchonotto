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

ActiveRecord::Schema[7.0].define(version: 2023_05_31_015853) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crusts", force: :cascade do |t|
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
    t.string "payment"
    t.bigint "drinks_id"
    t.bigint "pizzas_id"
    t.index ["drinks_id"], name: "index_orders_on_drinks_id"
    t.index ["pizzas_id"], name: "index_orders_on_pizzas_id"
  end

  create_table "pizzas", force: :cascade do |t|
    t.integer "size"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "notes"
  end

  create_table "products", force: :cascade do |t|
    t.string "item_type", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_type", "item_id"], name: "index_products_on_item"
  end

  create_table "topping_choices", force: :cascade do |t|
    t.bigint "topping_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pieces"
    t.bigint "pizza_id"
    t.index ["pizza_id"], name: "index_topping_choices_on_pizza_id"
    t.index ["topping_id"], name: "index_topping_choices_on_topping_id"
  end

  create_table "toppings", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "topping_choices", "toppings"
end
