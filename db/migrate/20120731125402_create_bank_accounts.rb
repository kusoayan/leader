class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.string :bank_name
      t.string :bank_code
      t.string :bank_branch
      t.string :account
      t.string :account_name
      t.boolean :is_default
      t.boolean :is_confirm
      t.string :remark

      t.timestamps
    end
  end
end
