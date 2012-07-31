class CreateTraders < ActiveRecord::Migration
  def change
    create_table :traders do |t|
      t.string :name
      t.string :trader_type
      t.string :type
      t.integer :stock_id

      t.timestamps
    end
  end
end
