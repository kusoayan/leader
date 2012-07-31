class CreateClosingPrices < ActiveRecord::Migration
  def change
    create_table :closing_prices do |t|
      t.integer :stock_id
      t.float :buy_pre
      t.float :buy_open
      t.float :buy_high
      t.float :buy_low
      t.float :buy_close
      t.float :sell_pre
      t.float :sell_open
      t.float :sell_high
      t.float :sell_low
      t.float :sell_close
      t.integer :week_of_year
      t.integer :month_of_year
      t.string :remark

      t.timestamps
    end
  end
end
