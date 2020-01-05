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

ActiveRecord::Schema.define(version: 2020_01_04_235410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "eddy_rails_interchange_control_numbers", force: :cascade do |t|
    t.integer "control_number", null: false
    t.boolean "received", default: false
    t.boolean "sent", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["control_number"], name: "index_eddy_rails_interchange_control_numbers_on_control_number", unique: true
  end

end
