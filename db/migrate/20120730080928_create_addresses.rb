class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :township
      t.integer :postalcode
      t.string :address
      t.string :address_type
      t.boolean :is_default
      t.boolean :is_confirm
      t.string :remark

      t.references :address_user, :polymorphic => true

      t.timestamps
    end
  end
end
