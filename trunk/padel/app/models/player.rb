class Player < ActiveRecord::Base
  belongs_to :pair
  validates_presence_of :name, :user, :pass
  validates_uniqueness_of :name
  validates_uniqueness_of :user
end
