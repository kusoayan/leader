class Webpage < ActiveRecord::Base
  attr_accessible :remark, :title, :url
  belongs_to :webpage_user, :polymorphic => true
end
