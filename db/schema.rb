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

ActiveRecord::Schema.define(version: 2019_02_11_221631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collabs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "drummers"
    t.integer "guitars"
    t.integer "basses"
    t.integer "keyboards"
    t.integer "rappers"
    t.integer "singers"
    t.integer "beatboxers"
    t.integer "producers"
    t.string "image"
  end

  create_table "user_collabs", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "collab_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collab_id"], name: "index_user_collabs_on_collab_id"
    t.index ["user_id"], name: "index_user_collabs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "location"
    t.string "specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "user_collabs", "collabs"
  add_foreign_key "user_collabs", "users"
end
