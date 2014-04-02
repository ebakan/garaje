class Garage < ActiveRecord::Base
  attr_accessible :open, :name, :user
  belongs_to :user
  has_many :permissions
  has_many :users, through: :permissions

  validates_presence_of :user, :name
end
