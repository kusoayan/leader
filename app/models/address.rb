class Address < ActiveRecord::Base
  attr_accessible :address, :address_type, :city, :is_confirm, :is_default, :postalcode, :remark, :township
  belongs_to :address_user, :polymorphic => true
end
