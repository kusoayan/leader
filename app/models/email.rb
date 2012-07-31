class Email < ActiveRecord::Base
  attr_accessible :email, :email_type, :is_confirm, :is_default, :remark, :status
  belongs_to :email_user, :polymorphic => true
end
