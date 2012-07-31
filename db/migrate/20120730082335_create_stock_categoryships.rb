class CreateStockCategoryships < ActiveRecord::Migration
  def change
    create_table :stock_categoryships do |t|
      t.integer :stock_id
      t.integer :category_id

      t.timestamps
    end
  end
end
