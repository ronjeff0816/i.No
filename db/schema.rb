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

ActiveRecord::Schema.define(version: 20200620092531) do

  create_table "favorites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",    null: false
    t.integer  "shop_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_favorites_on_shop_id", using: :btree
    t.index ["user_id", "shop_id"], name: "index_favorites_on_user_id_and_shop_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_favorites_on_user_id", using: :btree
  end

  create_table "shop_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "shop_id",    null: false
    t.string   "image",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_shop_images_on_shop_id", using: :btree
  end

  create_table "shops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "shop_name",                              null: false
    t.integer  "condition",                              null: false
    t.text     "introduction",             limit: 65535
    t.string   "shop_tel"
    t.string   "shop_add",                               null: false
    t.time     "weekday_open"
    t.time     "weekday_close"
    t.time     "weekend_open"
    t.time     "weekend_close"
    t.string   "dayoff"
    t.integer  "owner_id"
    t.integer  "town_id",                                null: false
    t.boolean  "corona_twoWays"
    t.boolean  "corona_twoMeters"
    t.boolean  "corona_partition"
    t.boolean  "corona_disinfect"
    t.boolean  "corona_mask"
    t.boolean  "corona_temperature"
    t.boolean  "corona_distance"
    t.boolean  "corona_customerDisinfect"
    t.boolean  "corona_customerDistance"
    t.boolean  "corona_exit"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "towns", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "town_name",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "owner_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["name"], name: "index_users_on_name", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "favorites", "shops"
  add_foreign_key "favorites", "users"
  add_foreign_key "shop_images", "shops"
end
