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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170711155907) do
=======
ActiveRecord::Schema.define(version: 20170711165822) do
>>>>>>> 4614a44bf4418247429d4a076697d2e6220efed4

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
=======
  create_table "options", force: :cascade do |t|
    t.string   "title"
    t.integer  "count"
    t.integer  "poll_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "options", ["poll_id"], name: "index_options_on_poll_id", using: :btree

>>>>>>> 4614a44bf4418247429d4a076697d2e6220efed4
  create_table "polls", force: :cascade do |t|
    t.string   "title"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
=======
  add_foreign_key "options", "polls"
>>>>>>> 4614a44bf4418247429d4a076697d2e6220efed4
end
