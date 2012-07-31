class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :email_type
      t.string :email
      t.string :status
      t.boolean :is_confirm
      t.boolean :is_default
      t.string :remark

      t.references :email_user, :polymorphic => true

      t.timestamps
    end
  end
end
