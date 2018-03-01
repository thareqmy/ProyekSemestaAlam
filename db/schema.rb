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

ActiveRecord::Schema.define(version: 20180301055359) do

  create_table "buyers", force: :cascade do |t|
    t.string "nama"
    t.string "nohp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "alamat"
    t.string "nohpwa"
    t.string "email"
    t.string "facebook"
    t.string "jeniskelamin"
    t.integer "user_id"
  end

  create_table "panens", force: :cascade do |t|
    t.integer "tambah"
    t.integer "vegetable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "vegetable_id"
    t.integer "user_id"
    t.integer "buyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "jumlahtransaksi"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "active"
    t.integer "chance"
    t.integer "buyers_id"
  end

  create_table "vegetables", force: :cascade do |t|
    t.string "jenis"
    t.integer "jumlah"
    t.integer "jumlahpanen"
  end

end
