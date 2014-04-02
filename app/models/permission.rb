class Permission < ActiveRecord::Base
  attr_accessible :user, :garage
  belongs_to :garage
  belongs_to :user
  validates_presence_of :user, :garage
end
