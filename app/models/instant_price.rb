class InstantPrice < ActiveRecord::Base
  attr_accessible :buy, :price_type, :sell, :stock_id
end
