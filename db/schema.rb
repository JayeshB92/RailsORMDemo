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

ActiveRecord::Schema.define(version: 20170131080821) do

  create_table "accounts", primary_key: "account_id", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.decimal  "amount",     precision: 12, scale: 2, default: "0.0", null: false
    t.string   "user_id",                                             null: false
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.index ["user_id"], name: "fk_rails_b1e30bebc8", using: :btree
  end

  create_table "club_members", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "club_id"
    t.string   "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "fk_rails_bb2fa3848d", using: :btree
    t.index ["user_id"], name: "fk_rails_b79e024ebd", using: :btree
  end

  create_table "clubs", primary_key: "club_id", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "club_name",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", primary_key: "customer_id", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint   "contact_number", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "employees", primary_key: "employee_id", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "designation",                                          null: false
    t.decimal  "salary",      precision: 12, scale: 2, default: "0.0", null: false
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
  end

  create_table "pictures", primary_key: "picture_id", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "picture_name", null: false
    t.string   "image_id",     null: false
    t.string   "image_type",   null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", primary_key: "user_id", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accounts", "users", primary_key: "user_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "club_members", "clubs", primary_key: "club_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "club_members", "users", primary_key: "user_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "customers", "users", column: "customer_id", primary_key: "user_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "employees", "users", column: "employee_id", primary_key: "user_id", on_update: :cascade, on_delete: :cascade
end
