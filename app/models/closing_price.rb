class ClosingPrice < ActiveRecord::Base
  attr_accessible :buy_close, :buy_high, :buy_low, :buy_open, :buy_pre, :month_of_year, :remark, :sell_close, :sell_high, :sell_low, :sell_open, :sell_pre, :stock_id, :week_of_year
end
