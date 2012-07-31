class EpaperSubscribe < ActiveRecord::Base
  attr_accessible :category, :email_account, :email_id, :fail_count, :is_confirm, :send_count, :send_status, :subscribe_type
end
