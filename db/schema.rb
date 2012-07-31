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

ActiveRecord::Schema.define(:version => 20120731154830) do

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

  create_table "alphabet_numbers", :force => true do |t|
    t.string   "alphabet"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bank_accounts", :force => true do |t|
    t.string   "bank_name"
    t.string   "bank_code"
    t.string   "bank_branch"
    t.string   "account"
    t.string   "account_name"
    t.boolean  "is_default"
    t.boolean  "is_confirm"
    t.string   "remark"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.boolean  "show"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "closing_prices", :force => true do |t|
    t.integer  "stock_id"
    t.float    "buy_pre"
    t.float    "buy_open"
    t.float    "buy_high"
    t.float    "buy_low"
    t.float    "buy_close"
    t.float    "sell_pre"
    t.float    "sell_open"
    t.float    "sell_high"
    t.float    "sell_low"
    t.float    "sell_close"
    t.integer  "week_of_year"
    t.integer  "month_of_year"
    t.string   "remark"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "emails", :force => true do |t|
    t.string   "email_type"
    t.string   "email"
    t.string   "status"
    t.boolean  "is_confirm"
    t.boolean  "is_default"
    t.string   "remark"
    t.integer  "email_user_id"
    t.string   "email_user_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "epaper_subscribes", :force => true do |t|
    t.string   "subscribe_type"
    t.integer  "email_id"
    t.string   "email_account"
    t.string   "category"
    t.boolean  "send_status"
    t.boolean  "is_confirm"
    t.integer  "send_count"
    t.integer  "fail_count"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "instant_prices", :force => true do |t|
    t.integer  "stock_id"
    t.float    "buy"
    t.float    "sell"
    t.string   "price_type"
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

  create_table "webpages", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "remark"
    t.integer  "webpage_user_id"
    t.string   "webpage_user_type"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
