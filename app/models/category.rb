class Category < ActiveRecord::Base
  attr_accessible :name, :show
  has_many :stock_categoryships
  has_many :stocks, :through => :stock_categoryships
end
