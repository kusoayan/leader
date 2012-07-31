class Trader < ActiveRecord::Base
  attr_accessible :name, :trader_type, :type
  has_many :phones, :as => :phone_user
  has_many :addresses, :as => :address_user
end
