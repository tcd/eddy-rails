# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_05_002723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "eddy_rails_f_group_control_numbers", force: :cascade do |t|
    t.integer "number", null: false
    t.string "f_group", null: false
    t.boolean "received", default: false
    t.boolean "sent", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["number", "f_group"], name: "index_eddy_rails_f_group_control_numbers_on_number_and_f_group", unique: true
  end

  create_table "eddy_rails_interchange_control_numbers", force: :cascade do |t|
    t.integer "number", null: false
    t.boolean "received", default: false
    t.boolean "sent", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["number"], name: "index_eddy_rails_interchange_control_numbers_on_number", unique: true
  end

  create_table "eddy_rails_t_set_control_numbers", force: :cascade do |t|
    t.integer "number", null: false
    t.string "t_set", null: false
    t.boolean "received", default: false
    t.boolean "sent", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["number", "t_set"], name: "index_eddy_rails_t_set_control_numbers_on_number_and_t_set", unique: true
  end

end
