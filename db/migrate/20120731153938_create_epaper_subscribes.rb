class CreateEpaperSubscribes < ActiveRecord::Migration
  def change
    create_table :epaper_subscribes do |t|
      t.string :subscribe_type
      t.integer :email_id
      t.string :email_account
      t.string :category
      t.boolean :send_status
      t.boolean :is_confirm
      t.integer :send_count
      t.integer :fail_count

      t.timestamps
    end
  end
end
