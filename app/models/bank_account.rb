class BankAccount < ActiveRecord::Base
  attr_accessible :account, :account_name, :bank_branch, :bank_code, :bank_name, :is_confirm, :is_default, :remark
end
