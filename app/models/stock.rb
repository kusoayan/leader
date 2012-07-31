class Stock < ActiveRecord::Base
  attr_accessible :accountant, :capitalization, :chairman, :company_number, :counseling_date, :emerging_date, :emerging_stock_number, :epaper, :first_alphabet, :form_date, :full_name, :general_manager, :issue_type, :kcc888_code, :last_approved_date, :listing_date, :main_business, :main_shareowner, :manage_team, :otc_date, :product, :public_offer_date, :remark, :second_alphabet, :short_name, :stock_type, :vat_number,
    :addresses_attributes, :phones_attributes, :webpages_attributes, :emails_attributes, :category_ids

  has_one :stock_affair
  has_one :counseling_dealer

  has_many :phones, :as => :phone_user
  accepts_nested_attributes_for :phones, :allow_destroy => true, :reject_if => :all_blank

  has_many :addresses, :as => :address_user
  accepts_nested_attributes_for :addresses, :allow_destroy => true, :reject_if => :all_blank

  has_many :webpages, :as => :webpage_user
  accepts_nested_attributes_for :webpages, :allow_destroy => true, :reject_if => :all_blank

  has_many :emails, :as => :email_user
  accepts_nested_attributes_for :emails, :allow_destroy => true, :reject_if => :all_blank

  has_many :stock_categoryships
  has_many :categories, :through => :stock_categoryships

end
