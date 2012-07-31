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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120730083148) do

  create_table "addresses", :force => true do |t|
    t.string   "city"
    t.string   "township"
    t.integer  "postalcode"
    t.string   "address"
    t.string   "address_type"
    t.boolean  "is_default"
    t.boolean  "is_confirm"
    t.string   "remark"
    t.integer  "address_user_id"
    t.string   "address_user_type"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.boolean  "show"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "phones", :force => true do |t|
    t.string   "phone_type"
    t.string   "area_number"
    t.string   "number"
    t.string   "ext"
    t.boolean  "is_default"
    t.boolean  "is_confirm"
    t.string   "remark"
    t.integer  "phone_user_id"
    t.string   "phone_user_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "stock_categoryships", :force => true do |t|
    t.integer  "stock_id"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stocks", :force => true do |t|
    t.string   "company_number"
    t.string   "short_name"
    t.string   "full_name"
    t.date     "form_date"
    t.float    "capitalization"
    t.string   "product"
    t.string   "manage_team"
    t.string   "main_shareowner"
    t.integer  "first_alphabet"
    t.integer  "second_alphabet"
    t.string   "emerging_stock_number"
    t.boolean  "epaper"
    t.string   "remark"
    t.string   "vat_number"
    t.string   "issue_type"
    t.string   "main_business"
    t.date     "last_approved_date"
    t.string   "chairman"
    t.string   "general_manager"
    t.string   "kcc888_code"
    t.date     "emerging_date"
    t.date     "public_offer_date"
    t.date     "counseling_date"
    t.date     "listing_date"
    t.date     "otc_date"
    t.string   "stock_type"
    t.string   "accountant"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "traders", :force => true do |t|
    t.string   "name"
    t.string   "trader_type"
    t.string   "type"
    t.integer  "stock_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
