class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :phone_type
      t.string :area_number
      t.string :number
      t.string :ext
      t.boolean :is_default
      t.boolean :is_confirm
      t.string :remark

      t.references :phone_user, :polymorphic => true

      t.timestamps
    end
  end
end
