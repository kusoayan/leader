class Category < ActiveRecord::Base
  attr_accessible :name, :show
  has_many :stock_categoryships
  has_many :stocks, :through => :stock_categoryships

  def self.exist?(category_name)
    return Category.where(['name = ?', category_name]).count == 0 ? false : true
  end
end
