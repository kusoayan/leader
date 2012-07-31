class CreateWebpages < ActiveRecord::Migration
  def change
    create_table :webpages do |t|
      t.string :title
      t.string :url
      t.string :remark

      t.references :webpage_user, :polymorphic => true

      t.timestamps
    end
  end
end
