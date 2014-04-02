class Permission < ActiveRecord::Base
  attr_accessible :user_id, :garage_id
  belongs_to :garage
  belongs_to :user
end
