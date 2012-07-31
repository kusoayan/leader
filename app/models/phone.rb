class Phone < ActiveRecord::Base
  attr_accessible :area_number, :ext, :is_confirm, :is_default, :number, :phone_type, :remark
  belongs_to :phone_user, :polymorphic => true
end
