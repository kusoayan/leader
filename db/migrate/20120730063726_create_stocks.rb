class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :company_number
      t.string :short_name
      t.string :full_name
      t.date :form_date
      t.float :capitalization
      t.string :product
      t.string :manage_team
      t.string :main_shareowner
      t.integer :first_alphabet
      t.integer :second_alphabet
      t.string :emerging_stock_number
      t.boolean :epaper
      t.string :remark
      t.string :vat_number
      t.string :issue_type
      t.string :main_business
      t.date :last_approved_date
      t.string :chairman
      t.string :general_manager
      t.string :kcc888_code
      t.date :emerging_date
      t.date :public_offer_date
      t.date :counseling_date
      t.date :listing_date
      t.date :otc_date
      t.string :stock_type
      t.string :accountant

      t.timestamps
    end
  end
end
