class CreateInstantPrices < ActiveRecord::Migration
  def change
    create_table :instant_prices do |t|
      t.integer :stock_id
      t.float :buy
      t.float :sell
      t.string :price_type

      t.timestamps
    end
  end
end
