class Garage < ActiveRecord::Base
  attr_accessible :open, :name, :user_id
  belongs_to :user
end
