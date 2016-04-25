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

ActiveRecord::Schema.define(version: 20160410154128) do

  create_table "clients", force: true do |t|
    t.integer  "NIP"
    t.string   "name"
    t.text     "address"
    t.text     "mailing_address"
    t.integer  "term"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.text     "summary"
    t.text     "facture"
    t.text     "date_raised"
    t.text     "date"
    t.integer  "payment"
    t.string   "currency"
    t.string   "language"
    t.string   "pricing_model"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", force: true do |t|
    t.integer  "invoice_id"
    t.text     "Nazwa"
    t.integer  "PKWiU"
    t.integer  "amount"
    t.text     "unit"
    t.decimal  "price_unit"
    t.integer  "VAT"
    t.decimal  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
